require_dependency "poe_rails/application_controller"

module PoeRails
  class CheatSheetController < ApplicationController
    before_filter :init_datas

    def init_datas
      @poe_index = PoeRails::ApplicationController::POE_INDEX
      @categories = Array.new
      @divided_emojis = Array.new
      set_categories
      set_divided_emojis
    end

    def index
      @path = '/assets/poe/png64/'
    end

    def set_categories
      @poe_index.each do |item|
        @categories << item['category'] if !@categories.include?(item['category'])
      end
    end

    def set_divided_emojis
      @categories.each do |category|
        emojis = Array.new
        @poe_index.each do |emoji|
          if category == emoji['category']
            emojis << emoji
          end
        end
        @divided_emojis << emojis
      end
    end
    
    def poe_divided_emojis
      respond_to do |format|
        format.json {render :json => @divided_emojis}
      end
    end

    def poe_categories
      respond_to do |format|
        format.json {render :json => @categories}
      end
    end
    
  end
end
