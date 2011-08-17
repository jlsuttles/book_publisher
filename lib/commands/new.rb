require "fileutils"

class New
  class << self
    def default(project_name=["book"])
      project_name = project_name.join("_")

      if File.exists?(project_name)
        puts "The directory '#{project_name}' already exists."
      else
        FileUtils.mkdir(project_name)
      end

      original_path = File.expand_path('../../../templates/config.yml', __FILE__)
      new_path      = "#{project_name}/config.yml"

      FileUtils.cp(original_path, new_path)

      puts "Created: #{project_name}"
      puts "Created: #{project_name}/config.yml"
      puts
      puts "Next steps:"
      puts "cd #{project_name}"
      puts "book_publisher config:source   git@github.com:<YOUR_USERNAME>/<YOUR_BOOK_CONTENT>.git"
      puts "book_publisher config:title    <YOUR BOOK TITLE>"
      puts "book_publisher config:subtitle <AN OPTIONAL BOOK SUBTITLE>"
      puts "book_publisher config:author   <AUTHOR NAME>"
    end
  end
end
