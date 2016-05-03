class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  around_filter :set_time_zone

  def tz
    @time = Time.zone.now
  end
  protected
    def set_time_zone
      Time.use_zone("America/Toronto"){yield}
    end
end
