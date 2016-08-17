class Poppy < ActiveRecord::Base
    
    def self.search(search,age)
        if search && age
             where("kind LIKE ?", search ).where("age LIKE ?", age )
        
        elsif search || age
        
           if search.nil?
               where("age LIKE ?", age )
           elsif age.nil?
               where("kind LIKE ?", search )
           end
        else
           all
        end

    end
end
