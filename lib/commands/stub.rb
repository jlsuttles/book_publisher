require "fileutils"

class Stub

  class << self

    def default(formats)
      formats.each do |format|
        Stub.send(format) if Stub.respond_to?(format)
      end
    end

    def all
      android
      epub
      html
      indesign
      ios
      mobi
      pdf
    end

    def android
      copy_template(:android)
    end

    def epub
      copy_template(:epub)
    end

    def html
      copy_template(:html)
    end

    def indesign
      copy_template(:indesign)
    end

    def ios
      copy_template(:ios)
    end

    def mobi
      copy_template(:mobi)
    end

    def pdf
      copy_template(:pdf)
    end

    private

    # TODO FIXME HACK move to helpers module
    def copy_template(path, project_name=".")
      original_path = File.expand_path("../../../templates/#{path}/", __FILE__)
      new_path      = "#{path}/"

      FileUtils.cp_r(original_path, new_path)
    end

  end

end
