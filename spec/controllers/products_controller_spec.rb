require 'rails_helper'

describe ProductsController, type: :controller do
  context 'Get #index' do
    it 'renders the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

  context 'Get #edit' do
    it 'can not edit product with empty name' do
      expect(Product.new(name: nil)).to_not be_valid
    end

    it 'can  edit product with  name, description, genre, price' do
      expect(Product.new(name: "sada", description: "dasda",genre:"dasa", price: 21)).to be_valid
    end
  end

  context 'Get #new' do
    it 'renders the new template' do 
      get :new
      expect(response).to be_ok 
      expect(response).to render_template('new')
    end 

    it 'can not create new product with empty name' do 
      expect(Product.new(name: nil)).to_not be_valid
    end 

    it 'can  edit product with  name, description, genre, price' do
      expect(Product.new(name: "TestName", description: "TestDescription",genre:"TestGenre", price: 21)).to be_valid
    end
  end

  context 'Post #create' do 
    it 'creates a product' do 
      expect(Product.new(name: "TestName", description: "TestDescription",genre:"TestGenre", price: 25)).to be_valid
    end 
  end

  describe "destroy" do 
    before do 
      @product = Product.new(name: "TestName", description: "TestDescription",genre:"TestGenre", price: 25)
    end 

    it 'destroy the product' do 
      expect(@product.destroy).to be_valid
    end 
  end 
end
