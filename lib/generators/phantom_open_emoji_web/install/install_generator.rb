require 'rails/generators'
require 'highline/import'
require 'bundler'
require 'bundler/cli'

module PhantomOpenEmojiWeb
  class InstallGenerator < Rails::Generators::Base

    def notify_about_routes
      insert_into_file File.join('config', 'routes.rb'), :after => "Application.routes.draw do\n" do
        %Q{
  mount PhantomOpenEmojiWeb::Engine, :at => '/'

}
      end

      unless options[:quiet]
        puts "*" * 50
        puts "We added the following line to your application's config/routes.rb file:"
        puts " "
        puts "    mount PhantomOpenEmojiWeb::Engine, :at => '/'"
      end
    end

    def complete
      unless options[:quiet]
        puts "*" * 50
        puts "PhantomOpenEmojiWeb has been installed successfully. You're all ready to go!"
        puts " "
        puts "(､´･ω･)▄︻┻┳═一　　　Σ==!Enjoy!>　　　( ﾟдﾟ)･∵."
      end
    end

  end
end