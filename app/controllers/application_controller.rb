class ApplicationController < ActionController::Base
## Devise whitelisting the :name atribute
  include DeviseWhitelistConcern
## Include the session catch session[:where_from]
  include SessionSourceConcern
 ## Implementation of Null object pattern
  include  GuestUserConcern
end
