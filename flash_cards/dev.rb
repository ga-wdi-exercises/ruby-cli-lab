require 'pry'


class Flashcard
    attr_accessor
    def initialize front, back
        @front = front
        @back = back 
    end

    def create_new_card
    end

    def edit_card
    end

    def delete_card
    end

    def view_card
    end

    def view_score
    end
end



binding.pry
puts "done"