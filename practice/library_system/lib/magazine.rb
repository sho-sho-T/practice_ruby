require_relative 'item'

class Magazine < Item
  attr_reader :issue_number

  def initialize(title, item_id, issue_number)
    super(title, item_id)
    @issue_number = issue_number
  end

  def display_details
    super
    puts "号数： #{@issue_number}"
  end
end