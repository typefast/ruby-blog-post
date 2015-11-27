require './post.rb'
class Blog
  attr_accessor :posts
  def initialize
    @posts = {}
  end
  
  def create_post
    puts "Create a post"
    puts "Enter a title:"
    title = gets.chomp
    puts "Post Content >>"
    a_post = gets.chomp
    new_post = Post.new(title, a_post)
    @posts[title] = new_post
  end
  
  def read_post
  end
  
  def update_post
  end
  
  def delete_post
  end
end

blog = Blog.new
blog.create_post


