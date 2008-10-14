require 'test_helper'

class InstructionTest < ActiveSupport::TestCase
   should_require_attributes :step, :description, :recipe_id
   should_only_allow_numeric_values_for :step, :recipe_id
   should_belong_to :recipe
  
  
end
