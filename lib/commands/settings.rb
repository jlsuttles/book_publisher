require "yaml"

class Settings
  class << self
    def default
      puts "Read or write config options."
      puts "Default Options: author email title subtitle source"
      puts "   Read example: book_publisher config:email"
      puts "  Write example: book_publisher config:email awesome@example.com"
    end
    
    def method_missing(meth, *args, &block)
      read_or_write(meth, *args)
    end

    def read_or_write(property, value=:read_or_write_value)
      if value.is_a?(Symbol)
        read(property.to_s)
      else
        write(property.to_s, value)
      end
    end

    private

    def config_yaml
      YAML::load(File.read("config.yml"))
    end

    def read(property)
      puts config_yaml[property]
    end

    def write(property, value)
      config = config_yaml
      config[property] = value.join(" ")

      File.open('config.yml', 'w+') do |file|
        file.puts config.to_yaml
      end

      puts "Config updated."
      puts "#{property}: #{value}"
    end
  end
end
