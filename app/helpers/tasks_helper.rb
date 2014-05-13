module TasksHelper

def category_select
  [
  ["Programming"],
  ["Networking"],
  ["Social"],
  ["Finance"],
  ["Household"],
  ["Personal"]
  ]
end

def sub_category_select
  [
  ["New Career Process Prep"],
  ["Friend / Family"],
  ["Reading"],
  ["Coding"],
  ["MeetUp"],
  ["Bootcamp"],
  ["Budget / Bill"]
  ]
end

 def country(location)
    if location['country'] == 'United States of America'
      'USA'
    else
      location['country']
    end
  end

 def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: full_name(user), class: "gravatar")
  end

@location = Location.new
  def visitor_location
    if Rails.env.test? || Rails.env.development?
      @response = Geocoder.search('174.51.246.225').first
    else
      @response ||= request.location
    end
    @location = Location.where(city: @response.city,
                               state_code: @response.state_code)
    .first_or_create do |location|
      location.city = @response.city
      location.state_code = @response.state_code
      location.latitude = @response.latitude
      location.longitude = @response.longitude
    end
  end
  
  def calendar_header
   
    "<th>#{(Date.today + (6+1)).strftime('%a %d')}</th>".html_safe
      x = x + 1
  
  end

end
