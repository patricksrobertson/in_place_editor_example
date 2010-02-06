require 'fileutils'

PUBLIC = File.join Rails.root, "public"
JS = File.join PUBLIC, "javascripts", "in_place_editor"
IN_PLACE_EDITING_PATH = File.join Rails.root, "vendor", "plugins", "in_place_editing"

namespace :in_place_editing do
  
  namespace :install do
    
    desc 'Installs the js file'
    task :js do
      Dir.mkdir JS unless File.exists?(JS)
      js_files = Dir.glob(File.join(IN_PLACE_EDITING_PATH,"js","*"))
      FileUtils.cp_r js_files, JS
      puts "JS File installed."
    end
      
    desc 'Installs everything'
    task :all, 
         :needs => ['in_place_editing:install:js'] do
      puts "In Place Editing has been installed!"
      puts "--"
      puts "Just put <%= include_in_place_editing %> in the head of your page"
    end
    
  end
  
end
