# 図書館管理システムのオブジェクト指向設計ポイント

## 1. クラスの階層構造

### 実装
- `Item`を基底クラスとし、`Book`、`Magazine`、`DVD`をサブクラスとして実装。

### 理由
- 共通の属性（タイトル、ID、貸出状態）と振る舞い（貸出、返却）を`Item`クラスで定義することで、コードの重複を避け、保守性を向上。
- 各メディアタイプ固有の属性や振る舞いを、それぞれのサブクラスで追加または上書きすることで、拡張性を確保。

## 2. ポリモーフィズム

### 実装
- 各`Item`サブクラスで`display_details`メソッドをオーバーライド。

### 理由
- 同じインターフェース（`display_details`）を使用しながら、各メディアタイプに特化した情報表示を実現。
- 新しいメディアタイプの追加が容易になり、システムの拡張性が向上。

## 3. カプセル化

### 実装
- 各クラスの属性を`private`または`protected`に設定し、必要に応じて`attr_reader`や`attr_accessor`を使用。

### 理由
- データの不正な変更を防ぎ、オブジェクトの一貫性を保持。
- 外部からのアクセスを制御することで、将来的な実装の変更に柔軟に対応可能。

## 4. 単一責任の原則

### 実装
- `Library`クラスがアイテムと会員の管理を担当。
- `Member`クラスが個々の会員の情報と貸出状況を管理。

### 理由
- 各クラスの責任を明確に分離することで、コードの可読性と保守性が向上。
- 将来的な機能追加や変更が容易になる。

## 5. 依存性の注入

### 実装
- `Library`クラスのメソッドが`Item`や`Member`オブジェクトを引数として受け取る。

### 理由
- `Library`クラスが特定の`Item`や`Member`の実装に依存せず、より柔軟な設計を実現。
- テストの容易性が向上し、モックオブジェクトの使用が可能になる。

## 6. インターフェースの一貫性

### 実装
- すべての`Item`サブクラスが同じメソッド（`check_out`、`check_in`、`display_details`）を持つ。

### 理由
- コードの一貫性を保ち、使用する側（`Library`クラスなど）の実装を簡素化。
- 新しいメディアタイプの追加時に、既存のコードへの影響を最小限に抑える。

## 7. 拡張性の考慮

### 実装
- 各クラスが明確に定義された責任を持ち、相互に疎結合な設計。

### 理由
- 新しい機能（予約システム、検索機能など）の追加が容易。
- 将来的な要件変更やシステム拡張に柔軟に対応可能。

## 結論

このオブジェクト指向設計により、図書館管理システムは保守性、拡張性、再利用性に優れたものとなりました。各クラスの責任が明確に分離され、新しい機能の追加や既存機能の修正が容易になります。また、ポリモーフィズムの活用により、異なるタイプのメディアを統一的に扱うことができ、将来的なメディアタイプの追加にも柔軟に対応できます。