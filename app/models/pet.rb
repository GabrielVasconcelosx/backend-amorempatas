class Pet < ActiveRecord::Base
  enum animal_type: { dog: 0, cat: 1 }
  enum size: { small: 0, medium: 1, big: 2 }

  validates :name, presence: true
  validates :age, presence: true
  validates :animal_type, presence: true
  validates :description, presence: true

end