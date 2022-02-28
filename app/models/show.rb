class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        #returns a list of the full names of each actor associated with the show
        self.characters.map {|c| c.actor.full_name}
    end
end