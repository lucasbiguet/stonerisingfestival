namespace :db do
  desc "Fill Posts table with sample posts"
  task populate: :environment do    
    99.times do |n|
      title  = Faker::Name.title
      content = Faker::Lorem.paragraph    
      Post.create!(title: title,
                   content: content)
    end
  end
end