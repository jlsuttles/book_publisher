class Settings
  class << self
    def default
      puts "
Config commands:
  author
  email
  title
  subtitle
  source
"
    end

    def author(value=:author)
      if value.is_a?(Symbol)
        puts "author"
      else
      end
    end

    def email(value=:email)
      if value.is_a?(Symbol)
        puts "email"
      else
      end
    end

    def source(value=:source)
      if value.is_a?(Symbol)
        puts "source"
      else
      end
    end

    def title(value=:title)
      if value.is_a?(Symbol)
        puts "title"
      else
      end
    end

    def subtitle(value=:subtitle)
      if value.is_a?(Symbol)
        puts "subtitle"
      else
      end
    end
  end
end
