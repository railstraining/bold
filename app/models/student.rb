class Student < ApplicationRecord
 has_many :class_room, as: :imageable
end
