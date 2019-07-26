class Word
  @@posts = []
  @@id_counter = 0
  attr_reader :id
  attr_accessor :definition

  def initialize ()
    @@id_counter +=1
    @definition = attributes.fetch(:definition)
    @id = @@id_counter
  end
