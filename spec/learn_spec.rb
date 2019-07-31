
require ('rspec')
require ('learn')
require ('pry')



  describe('.all') do
    it("returns an empty array when there are no words") do
      expect(Dictionary.all).to(eq([]))
    end
  end

  describe('.search') do
    it("finds a word by id") do
      word = Dictionary.new({:word => "Red", :definition => "hello", :id => 1})
      expect(word.id).to(eq(word.id))
    end
  end

  describe('.add') do
    it("adds a new word and definition") do
      word = Dictionary.new({:word => "Cord", :definition => "hello"})
      expect(word).to(eq(word))
    end
  end
 
