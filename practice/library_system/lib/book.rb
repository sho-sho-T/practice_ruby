require_relative 'item'

class Book < Item
  attr_reader :author, :isbn

  def initialize(title, item_id, author, isbn)
    super(title, item_id)
    @author = author
    @isbn = isbn
  end

  def display_details
    super
    puts "著者： #{@author}"
    puts "ISBN: #{@isbn}"
  end
end