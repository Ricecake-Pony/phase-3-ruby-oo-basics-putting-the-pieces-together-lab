require 'pry'
# Make your shoe class here!
#Oh. I watched your video and I remembered you said we can list it. BTW Trey, Princeton left his puts string for tunr page, so probs have to do it that way here.

class Shoe
    attr_reader :brand
    attr_accessor :color
    attr_accessor :size
    attr_accessor :material
    attr_accessor :condition
    
    def initialize brand
        @brand = brand
    end
    def cobble
        puts "Your shoe is as good as new!"
        @condition = "new"
    end
end

s1 = Shoe.new("Adidas")