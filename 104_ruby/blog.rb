class Blog
    attr_accessor :title, :all_posts, :total_posts

    def initialize
        @created_at = Time.now
        puts "Name your blog"
        @title = gets.chomp
        @all_posts = []
        @total_posts = 0
     end

    def create_post
        new_post = Blog_Post.new
        puts "Here is my new blog post!"
        @all_posts << new_post
        @total_posts += 1
    end
    
    def collect_posts
        return @all_posts  
    end
    
    def publish(all_posts)
        all_posts.each do |blog_post|
        puts blog_post.title
        puts blog_post.created_at
        puts blog_post.content
    end
end
end      
    
class Blog_Post
    attr_accessor :title, :created_at, :content
    
    def initialize
        @created_at = Time.new
        puts "Give your post a title"
        @post_title = gets.chomp

        puts "Add your blog post content"
        @content = gets.chomp
    end
    
    def edit_content
        puts "New blog title: "
        @title = gets.chomp
        
        puts "New blog content: "
        @content = gets.chomp
    end
end

my_blog = Blog.new
first_blog_post = my_blog.create_post
all_posts = my_blog.collect_posts
puts my_blog.inspect
my_blog.publish(all_posts)