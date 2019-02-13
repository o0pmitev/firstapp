require 'rails_helper'

describe UsersController, type: :controller do
    let(:user) { User.create!(email: 'pmitev@example.com', password: '1231232') }

    describe 'GET #show' do
        context 'when a user is logged in' do
            before(:each) do
                sign_in user
            end
            it "loads correct  user details" do
                get :show, params: { id: user.id }
                expect(response).to be_successful
                expect(assigns(:user)).to eq user
        
         end

        context 'when a user is not logged in' do
            it 'redirects to login' do
            get :show, params: {id: user.id }
            expect(response).to be_successful
        end
    
    end
    end
end
end
