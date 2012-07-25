require_relative 'likable'

class Book
	include Likable
	attr_accessor :author,:title

	def initialize args
		@title = args[:title]
		@author=Person.new(first:args[:first],last:args[:last])
	end
  
end
