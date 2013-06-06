module PoeRails
  class ApplicationController < ActionController::Base
    require 'poe'
    POE_INSTANCE = POE.new
    POE_INDEX = POE_INSTANCE.instance_variable_get("@index")
  end
end