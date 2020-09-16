class Post

    attr_accessor :title, :author
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if author
            return author.name
        else
            return nil
        end
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

end