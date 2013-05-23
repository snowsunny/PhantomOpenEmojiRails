require 'rails/generators'
require 'highline/import'
require 'bundler'
require 'bundler/cli'

module PoeRails
  class InstallGenerator < Rails::Generators::Base

    def notify_about_routes
      insert_into_file File.join('config', 'routes.rb'), :after => "Application.routes.draw do\n" do
        %Q{
  mount PoeRails::Engine, :at => '/poe'

}
      end

      unless options[:quiet]
        puts "*" * 50
        puts "We added the following line to your application's config/routes.rb file:"
        puts " "
        puts "    mount PoeRails::Engine, :at => '/poe'"
      end
    end

    def complete
      unless options[:quiet]
        puts "*" * 50
        puts "PhantomOpenEmojiRails has been installed successfully. You're all ready to go!"
        puts " "
        puts "(､´･ω･)▄︻┻┳═一   Σ==!Enjoy!>"
      end
    end

  end
end