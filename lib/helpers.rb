module Helpers

  def copy_template(path, project_name)
    original_path = File.expand_path("../../../templates/#{path}", __FILE__)
    new_path      = "#{project_name}/#{path}"

    FileUtils.cp(original_path, new_path)
  end

end