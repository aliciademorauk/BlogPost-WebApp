# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'securerandom'

random_password = SecureRandom.hex(8)
# Add your email address below:
email = "aliciademoralosana@yahoo.com"

user = User.where(email: email).first_or_initialize
user.update!(
    password: random_password,
    password_confirmation: random_password
)

puts "Random password generated for user '#{email}': #{random_password}"

blog_posts_data = JSON.parse(File.read(Rails.root.join('db', 'seed_posts.json')))
blog_posts_data.each do |data|
    published_at_value = data['published_at'].present? ? DateTime.parse(data['published_at']) : nil
    blog_post = BlogPost.where(title: data['title']).first_or_initialize
    blog_post.update!(
        content: data['content'], 
        published_at: published_at_value
    )
end


