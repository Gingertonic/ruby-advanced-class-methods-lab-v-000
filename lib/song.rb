class Song
  attr_accessor :name, :artist_name
  @@all = []

  # def initialize
  #   @name = name
  #   @@all << self
  # end

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

  def self.new_by_name(title)
    namedsong = self.new
    namedsong.name = title
    namedsong
  end

  def create_by_name(name)
    namedsong = self.new
    namedsong.name = title
    self.all << namedsong
    namedsong
  end
end
