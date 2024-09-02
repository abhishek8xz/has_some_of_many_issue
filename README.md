# Setup 
Run the following commands:
```console
bundle install
rails db:create
rails db:migrate
rails db:seed
```


# Issue re-creation 

1. Open rails console using command `rails c`.
2. Execute the following
``` ruby
  parent_posts = Post.all.where(parent_post_id: nil)

  # Works
  parent_posts.collect{|parent_post| parent_post.children.limit(3).collect(&:name) }

  # Does not work
  parent_posts.includes(:first_three_children).collect{|parent_post| parent_post.first_three_children.collect(&:name) }
```
