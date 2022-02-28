class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    #returns a list of roles for the actor using the character name and show name
    self.characters.map {|c| "#{c.name} - #{c.show.name}"}
  end
end