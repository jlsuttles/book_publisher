require "yaml"

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
        read(property.to_s)
      else
        write(property.to_s, value)
      end
    end

    def config_yaml
      YAML::load(File.read("config.yml"))
    end

    def read(property)
      puts
      puts config_yaml[property]
      puts
    end

    def write(property, value)
      config = config_yaml
      config[property] = value.join(" ")

      File.open('config.yml', 'w+') do |file|
        file.puts config.to_yaml
      end

      puts
      puts "#{property} is now #{value}"
      puts
    end
  end
end
