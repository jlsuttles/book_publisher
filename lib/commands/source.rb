class Source
  class << self
    # show book source git/github url
    def default
      puts "
github: https://github.com/lessthan3/Sara-Beth-Cookbook-1
   git: git@github.com:lessthan3/Sara-Beth-Cookbook-1.git"
      puts
    end

    # add/update book source git/github url
    def set(url=:url)
      github = url
      git    = url
      
      puts "
source saved: #{github}
              #{git}"

      puts
    end
  end
end
