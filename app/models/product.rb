class Product < ApplicationRecord
  has_many :pictures, as: :imageable
 # validates :name,:email, presence: true,on: :update
 # validates :name, exclusion: { in: %w(www us ca jp),
    # message: "%{value} is reserved." }
 # validates :location, inclusion: { in: %w(small medium large),
    # message: "%{value} is not a valid location" }
  # validates :name, length: { minimum: 5 }
  # validates :email,:name, uniqueness: true
  # validates :email, uniqueness: true, on: :update

  # validates :name, presence: true, if: :name_check?

  # def name_check?
  #   2==2
  # end

  # after_initialize do |product|
  #   Site.create(name:"site1")
  # end

  # after_find do |product|
  #   Site.create(name:"site1")
  # end


  
  # before_save do |product|
  #   Site.create(name:"site1")
  # end


  # before_create do |product|
  #   Site.create(name:"site1")
  # end


  # after_save do |product|
  #   Site.create(name:"site1")
  # end

  # before_save :sample, if :sample_condition?

  # def sample
  # 	puts "helloo world"
  # end

  # def sample_condition
  #   2==2
  # end
end


#validations will be executed in 3 scenarios
#1.CREATE
#2.UPDATE
#3..SAVE

#callbacks are blocks of code which used to execute during changing of 
#life cycle of a object

