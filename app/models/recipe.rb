class Recipe < ActiveRecord::Base
  
  validates_presence_of :title 
  has_many :instructions
  after_update :save_instructions
  
  
  def existing_instruction_attributes=(instruction_attributes)
    self.instructions.reject(&:new_record?).each do |instruction|
      attributes = instruction_attributes[instruction.id.to_s]

      if attributes
        instruction.attributes = attributes
      else
        instructions.delete(instruction)
      end
    end
  end
  
  
  def new_instruction_attributes=(instruction_attributes)
    instruction_attributes.each do |instruction|
       self.instructions.build(instruction)
    end
  end
  
  def save_instructions
    self.instructions do |instruction|
      instruction.save(false)
    end
  end
  
end
