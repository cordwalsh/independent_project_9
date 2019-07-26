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
