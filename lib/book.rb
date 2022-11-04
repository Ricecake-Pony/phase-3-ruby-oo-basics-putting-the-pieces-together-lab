require 'pry'

# Hmm Princeton why can I not combine these two parameters and invoke them like I did with the one below? OHHHH! I think it's because the test wants it done just a certain way. But I don't believe my way is wrong.

class Book
    attr_reader :title
    attr_accessor :author
    attr_accessor :page_count
    attr_accessor :genre
    attr_accessor :turn_page #("Flipping the page...wow, you read fast!") Hmmm I want to figure out how to do it this way. My error: Failure/Error: expect { book.turn_page }.to output(a_string_matching("Flipping the page...wow, you read fast!")).to_stdout
    # expected block to output a string matching "Flipping the page...wow, you read fast!" to stdout, but output nothing
    # Diff:
    # @@ -1 +1 @@
    # -(a string matching "Flipping the page...wow, you read fast!")
    # +""
    #So the string is empty on my end, which is why I tried pushing a value through via a parameter in the accessor. Maybe that's not the best way to do this? PRINCETON! How is can we do this? Would we need to call an actual new book and implement that string there? Nope. because then it would have to be in our #initialize.. FINE I'll do it your long way! 
    def initialize title #, author
        @title = title
        # @author = author
    end
    
    # def author= author
    #     @author= author
    # end
    # def author
    #     @author
    # end

    # def page_count= number
    #     @page_count= number
    # end
    # def page_count
    #     @page_count
    # end
# Princeton's doing it the long way on purpose! Screw that.

    def turn_page
        puts "Flipping the page...wow, you read fast!"
    end

end

# b1 = Book.new("And Then There Were None", "Agatha Christie") aww we didn't even need to do this?


# binding.pry
