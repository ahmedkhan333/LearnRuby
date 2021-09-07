class Student < ApplicationRecord

    validates :name, :School, :phone, :instagram, :degree, presence: true
    
end


