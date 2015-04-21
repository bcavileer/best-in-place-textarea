class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @example = Example.new(description: 'Edit Me')
  end
end
