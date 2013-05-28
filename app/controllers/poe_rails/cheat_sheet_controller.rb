require_dependency "poe_rails/application_controller"

module PoeRails
  class CheatSheetController < ApplicationController
    require 'poe'

    def index
      @poe = POE.new
      @index = @poe.instance_variable_get("@index")
      @path = '/assets/poe/png64/'

      set_category
      set_divided_emojis
    end

    def set_category
      @category = Array.new
      @index.each do |item|
        @category << item['category'] if !@category.include?(item['category'])
      end
    end

    def set_divided_emojis
      @divided_emojis = Array.new
      @category.each do |item|
        emojis = Array.new
        @index.each do |emoji|
          if item == emoji['category']
            emojis << emoji
          end
        end
        @divided_emojis << emojis
      end
    end

  end
end
