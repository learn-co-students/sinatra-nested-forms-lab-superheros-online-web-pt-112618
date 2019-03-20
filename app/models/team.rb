class Team
  attr_accessor :name, :motto
  @@all = []
  def initialize(attribute_hash)
    @name = attribute_hash[:name]
    @motto = attribute_hash[:motto]
    @@all.push(self)
  end
end