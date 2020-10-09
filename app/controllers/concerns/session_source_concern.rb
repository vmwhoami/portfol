module SessionSourceConcern
  extend ActiveSupport::Concern
  
  included do
    before_action :session_source_concern
  end

  def session_source_concern
    session[:where_from] = params[:s] if params[:s]   
  end
  

end