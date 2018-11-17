FactoryBot.define do 
    factory :product do
        name {'test_product'}
        maker_id {1}
        category_id {1}
        product_descuription {'RSpec & Capybara & FactoryBotの準備をする'}
    end
end
