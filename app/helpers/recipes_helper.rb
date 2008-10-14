module RecipesHelper
  def add_instruction_link(name)
    link_to_function name do |page| 
      page.insert_html :bottom, :instructions_block, :partial => 'instructions/edit', :object => Instruction.new
      
    end
    
  end
end
