class PublicsController < ApplicationController
  def index
  end

  def other
  	redirect_to(:controller => 'publics', :action => 'index')
  	#redirect_to(:action => 'index')
  end
end
