

class Author

    attr_accessor :name
    
    @@post_count = 0

    def initialize(name)
        @name = name
        @post = []
       


    end


    def posts
        @post
    end


    def add_post(post)
        @post << post
        post.author = self
        @@post_count += 1
    end


    def add_post_by_title(name)
        post = Post.new(name)
        @post << post
        post.author = self
        @@post_count += 1
    end

    def self.post_count
        @@post_count
    end

    
    
    


end