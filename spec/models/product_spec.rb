require 'rails_helper'

describe Product do

	context "when the product has comments" do
		
		let(:product) { Product.create!(name: "Call of Chtulu", description: "horror story", genre: "horror", price: "15") }
        let(:user) { User.create!(email: "dasdsa@abv.bg", password: "123123") }

		before do
			product.comments.create!(rating: 1, user: user, body: "Not so good!")
			product.comments.create!(rating: 3, user: user, body: "Mmmm")
			product.comments.create!(rating: 5, user: user, body: "Masterpease")
		end

		it "returns the average rating of all comments" do
			expect(product.average_rating).to eq 3.0
		end
        
        it "returns the highest raiting of all comments" do
            expect(product.highest_rating_comment.rating).to eq 5.0
        end
        
        it "returns the lowest raiting of all comments" do
            expect(product.lowest_rating_comment.rating).to eq 1.0
        end

        it "is not valid without a name" do
            expect(Product.new(description: "nice book")).not_to be_valid
        end
    end
end