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
      read_or_write(:author, value)
    end

    def email(value=:email)
      read_or_write(:email, value)
    end

    def source(value=:source)
      read_or_write(:source, value)
    end

    def title(value=:title)
      read_or_write(:title, value)
    end

    def subtitle(value=:subtitle)
      read_or_write(:subtitle, value)
    end


    private

    def read_or_write(property, value=:read_or_write_value)
      if value.is_a?(Symbol)
        read(property)
      else
        write(property, value)
      end
    end

    def read(property)
      puts "config.yml read property"
    end

    def write(property, value)
      puts "config.yml write property : #{value}"
    end
  end
end
