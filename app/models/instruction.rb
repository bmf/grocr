class Instruction < ActiveRecord::Base
  belongs_to :recipe
  validates_numericality_of :recipe_id, :step
  validates_presence_of :description, :recipe_id, :step
  
  
end
