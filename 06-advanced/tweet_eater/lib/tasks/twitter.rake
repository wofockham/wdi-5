namespace :twitter do
  desc "Wipe out the User and Tweet data"
  task :clear => :environment do
              # Depend on the environment task for access to Rails models etc.
    User.destroy_all
    Tweet.destroy_all
  end

  desc "Populate users and tweets with Faker data"
  task :populate, [:user_count] => :environment do |t, args|
    FactoryGirl.create_list :user_with_tweets, args[:user_count].to_i
  end

  desc "Populate tweets with actual Twitter results for a given query"
  task :search, [:query, :limit] => :environment do |t, args|
    query = args[:query]
    limit = args[:limit].to_i

    puts "Searching Twitter for #{ limit } posts about #{ query }"

    # Make this work.
  end
end
