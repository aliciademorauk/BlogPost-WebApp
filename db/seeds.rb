# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

user = User.where(email: "aliciademoralosana@yahoo.com").first_or_initialize
user.update!(
    password: "password",
    password_confirmation: "password"
)

blog_posts_data = JSON.parse(File.read(Rails.root.join('db', 'seed_posts.json')))

blog_posts_data.each_with_index do |data, i|
    blog_post = BlogPost.where(title: data['title']).first_or_initialize
    blog_post.update!(content: data['content'], published_at: Time.current)
end  