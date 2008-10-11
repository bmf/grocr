require 'test_helper'


class RecipeTest < ActiveSupport::TestCase
  should_require_attributes :title
  should_have_many :instructions
  
  should "allow multiple instructions in a recipe" do
    recipe = Recipe.new :title => 'My title'
    recipe.instructions.build :step => '1', :description => 'This is step 1'
    recipe.instructions.build :step => '2', :description => 'This is step 2'
    recipe.instructions.build :step => '3', :description => 'This is step 3'
    assert recipe.save
  end
  
end
  