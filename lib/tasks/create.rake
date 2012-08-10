desc "Populate"
namespace :create do
  desc "Create posts"
  task :post => :environment do
    puts "Posts ..."

    25.times do |t|
      Post.create(title: "Post#{t}", description: "Post", published: true, moderated: true)
    end
  end
end
