require_dependency "poe_rails/application_controller"

module PoeRails
  class CheatSheetController < ApplicationController
    require 'poe'

    def index
      @poe = POE.new
      @index = @poe.instance_variable_get("@index")
      @path = '/assets/poe/png64/'

      set_categories
      set_divided_emojis
    end

    def set_categories
      @categories = Array.new
      @index.each do |item|
        @categories << item['category'] if !@categories.include?(item['category'])
      end
    end

    def set_divided_emojis
      @divided_emojis = Array.new
      @categories.each do |category|
        emojis = Array.new
        @index.each do |emoji|
          if category == emoji['category']
            emojis << emoji
          end
        end
        @divided_emojis << emojis
      end
    end

  end
end
