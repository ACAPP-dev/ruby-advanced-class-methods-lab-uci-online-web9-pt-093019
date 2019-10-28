require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)

    @@all.detect{|song_element| song_element.name == name}
    #@@all.each do |class_element|
      #binding.pry
    #  if class_element.name == name
    #    return class_element
    #  end
    #end
    #  return false

  end
end
