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
    content = gets.chomp
    new_post = Post.new(title, content)
    @posts[title] = new_post
  end
  
  def read_post(title)
    blog_post = @posts[title]
    puts "Title: #{blog_post.title}"
    puts "Created at: #{blog_post.time}"
    puts "Post: #{blog_post.content}"
  end
  
  def update_post(title)
    blog_post = @posts[title]
    
    puts "Edit title: "
    blog_post.title = gets.chomp
    
    puts "Edit content: "
    blog_post.content = gets.chomp
  end
  
  def delete_post(title)
    @posts.delete(title) if @posts.has_key?(title)
  end
  
  def run
    loop do 
      puts "What do you want to do?"
      puts "1. Create a Post"
      puts "2. Read a Post"
      puts "3. Update Post"
      puts "4. Delete Post"
      action = gets.chomp
      
      case action 
      when "1"
        create_post
      when "2"
        @posts.each { |title, content| print title + ", " }
        
        puts "Enter the title of the post you want to read: \n"
        title = gets.chomp
        read_post(title)
      when "3"
        puts "Enter the title of the post you want to update: "
        title = gets.chomp
        update_post(title)
      when "4"
        puts "Enter title of post you want to delete: "
        title = gets.chomp
        delete_post(title)
      end
    end
  end
end

blog = Blog.new
blog.run




