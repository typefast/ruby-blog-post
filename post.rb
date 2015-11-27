
class Post
  attr_accessor :title, :content, :time
  def initialize(title, content)
    @title = title
    @content = content
    @time = Time.now.asctime
  end
end
