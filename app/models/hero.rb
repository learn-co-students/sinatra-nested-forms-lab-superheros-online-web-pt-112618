class Hero
  attr_accessor :name, :power, :bio
  @@all = []
  def initialize(attribute_hash)
    @name = attribute_hash[:name]
    @power = attribute_hash[:power]
    @bio = attribute_hash[:bio]
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.clear
    @@all=[]
  end
end
