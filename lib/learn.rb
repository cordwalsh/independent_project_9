class Dictionary
  @@posts = []
  @@id_counter = 0
  attr_reader :id, :word
  attr_accessor :definition

  def initialize (attributes)
    @@id_counter +=1
    @definition = attributes.fetch(:definition)
    @word = attributes.fetch(:word)
    @id = @@id_counter
  end

  def self.all
    return @@posts
  end

  def self.add(dictionary)
    @@posts.push(dictionary)
  end

  def self.edit(id, new_definition)
  (@@posts.select {|dictionary| dictionary.id == id})[0].definition = new_definition
  end

end
