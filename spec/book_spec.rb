require_relative "../person.rb"
require_relative "../book.rb"
require 'pp'

describe Book do
	let (:b1) { Book.new(author: Person.new(first: "Tim", last: "Hickey"),title:"The Winner Stand alone")}
	it { b1.should respond_to :author}
	it { b1.like?.should == false }

describe "a book should have a title" do
	before{b1.title=="The Winner Stand alone" }
it {b1.should respond_to :title}
end
end
describe "a person can like a book " do
	let (:p1) { Person.new(first: "Tim", last: "Hickey")}
	let (:b1) { Book.new(author: Person.new(first: "Tim", last: "Hickey"),title:"The Winner Stand alone")}

	it "p1 likes b1" do
		p1.likes(b1)
		b1.like?.should == true
	end


describe "book tracks who likes it" do
		before { p1.likes(b1) }
		it { b1.is_liked_by?(p1).should == true }
	end
end