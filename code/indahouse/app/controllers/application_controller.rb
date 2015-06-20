class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def token
    # this is so nasty I just hope no one from my work see this
    val = `curl --data "client_id=HanexjfJMGC9GnveB5NNqbjzF3bvQlAH&client_secret=FwZNYEmc5yimooSb&grant_type=client_credentials" https://developer.api.autodesk.com/authentication/v1/authenticate --header "Content-Type: application/x-www-form-urlencoded" -k`

    render text: val, layout: false
  end
end
