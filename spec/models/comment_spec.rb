require 'rails_helper'

describe Comment do
    context "Testing comments" do
        
        it "its not a valid comment without rating" do
            expect(Comment.new(rating:nil)).not_to be_valid
        end

     
        
        it "its not a valid comment without text" do
            expect(Comment.new(body:nil)).not_to be_valid
        end

        it "cant comment if user is not logged in" do
            expect(Comment.new(user:nil)).not_to be_valid
        end

    end
end