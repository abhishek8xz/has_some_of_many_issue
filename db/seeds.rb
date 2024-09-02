# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do |parent_post_counter|
  post = Post.create!(name: "Post #{parent_post_counter}")
  10.times do |i|
    post.children.create!(name: "Post #{parent_post_counter} - Child #{i}")
  end
end

5.times do |parent_counter|
  parent = Parent.create!(name: "Parent #{parent_counter}")
  10.times do |i|
    parent.children.create!(name: "Parent #{parent_counter} - Child #{i}")
  end
end
