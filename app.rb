require "pry"

class Card
  attr_accessor :question, :answer, :cards
  @@all = []

  def initialize(question, answer)
    @question = question
    @answer = answer
    @cards = []
    @@all.push(self)
  end

  def add_card
    @cards.push(self)
  end

  def self.all
    @@all
  end
end

puts "Flash Cards!"
puts "Type 'new' to make a new card."
puts "Type 'view' to view your cards."
puts
input = gets.chomp.downcase

if input == "new"
  puts "Enter a question for the card."
  question = gets.chomp
  puts "Enter the answer for the card."
  answer = gets.chomp
  p Card.new(question, answer)

  elsif input == "view"
      Card.all.each do |card|
        puts card.question + "" + card.answer
      end

end


binding.pry
