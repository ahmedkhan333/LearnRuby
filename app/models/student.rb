class Student < ApplicationRecord

    validates :name, :School, :phone, :instagram, presence: true
    
end
