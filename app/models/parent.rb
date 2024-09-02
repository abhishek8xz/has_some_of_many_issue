class Parent < ApplicationRecord
  has_many :children
  has_some_of_many :first_three_children, -> { order(created_at: :asc).limit(3) }, class_name: "Child"
end
