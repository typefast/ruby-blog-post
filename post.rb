
class Post
  attr_accessor :title, :post, :time
  def initialize(title, a_post)
    @title = title
    @post = a_post
    @time = Time.now.asctime
  end
end
