class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name="Untitled")
    @name = name
    self.class.all << self
  end
    

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(name)
    song = self.new(name)
    self.all << song
  end

end
