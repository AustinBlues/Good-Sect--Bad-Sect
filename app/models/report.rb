class Report < ActiveRecord::Base
  # Date as string in current timezone, with fallbacks.
  def date
    (datetime || updated_at || created_at).localtime.strftime('%b %d, %Y')
  end
end
