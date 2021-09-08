class Student < ApplicationRecord
       
    has_many :courses
   
    validates :name, :School, :phone, :instagram, :degree, presence: true
    
end


