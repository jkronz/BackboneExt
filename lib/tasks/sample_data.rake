namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    321.times do |n|
      first_name = Faker::Name.first_name
      last_name = Faker::Name.last_name
      email = Faker::Internet.email
      company = Faker::Company.name
      phone = Faker::PhoneNumber.phone_number
      title = Faker::Name.title

      User.create!(first_name: first_name,
                   last_name: last_name,
                   email: email,
                   company: company,
                   phone: phone,
                   title: title)
    end
  end
end