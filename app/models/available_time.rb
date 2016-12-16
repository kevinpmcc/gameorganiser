class AvailableTime < ActiveRecord::Base

  def readable_time
    time.strftime('%H:%M')
  end

end
