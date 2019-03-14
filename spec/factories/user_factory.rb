require 'factory_bot'

FactoryBot.define do
    sequence(:email) {|n| "user#{n}@example.com"}
    
    factory :user do
        email 
        password {"123123123"}
        first_name {"Todor"}
        last_name {"Todorov"}
        admin {false}
    end


    factory :admin, class: User do
        email 
        password {"qwertyuiop"}
        admin {"true"}
        first_name {"Admin"}
        last_name {"User"}
    end
end
