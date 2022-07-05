FactoryBot.define do
    factory :student do
        id { Faker::Number.between(from: 1, to: 100) }
        name { Faker::Name.name }
        email { Faker::Internet.email   }
        mobile { Faker::Number.number(10) }
        dob { Faker::Date.birthday(min_age: 10, max_age: 18)  }
        profile_pic { Faker::Internet.url }
        login_progress { Faker::Number.between(from: 1, to: 100) }
        grade_id { Faker::Number.between(from: 5, to: 12) }
    end
  end
  