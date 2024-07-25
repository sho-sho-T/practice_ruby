require_relative 'item'

class DVD < Item
  attr_reader :director, :runtime

  def initialize(title, item_id, director, runtime)
    super(title, item_id)
    @director = director
    @runtime = runtime
  end

  def display_details
    super
    puts "監督： #{@director}"
    puts "再生時間： #{@runtime}"
  end
end