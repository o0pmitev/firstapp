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

    it 'can  edit product with  name, descriptionm, genre, price' do
      expect(Product.new(name: "sada", description: "dasda",genre:"dasa", price: 21)).to be_valid
    end

  end

  context 'Get #new' do
  end

  context 'Post #crete' do

  end
  
end
