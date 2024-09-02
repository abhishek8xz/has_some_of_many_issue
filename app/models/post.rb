class Post < ApplicationRecord
  has_many :children, -> { order(created_at: :asc) }, class_name: "Post", foreign_key: "parent_post_id"
  has_some_of_many :first_three_children, -> { order(created_at: :asc).limit(3) },
    class_name: "Post",
    foreign_key: "parent_post_id"
end
