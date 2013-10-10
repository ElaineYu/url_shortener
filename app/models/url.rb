require 'uri'
class Url < ActiveRecord::Base
  #Setup validation
    # any non-empty string
          # any non-empty string that starts with "http://" or "https://"
          # any string that Ruby URI module says is valid
          #url =~ /^#{URI::regexp}$/
          # any IRL-looking thing which responds to an HTTP request


  validates_format_of :website, :with => URI::regexp(%w(http https))
          

  # Use before_save callback in the url
    # Callbacks allow you to trigger logic before or after
    # an alteration of an object's state
  before_save :create_url

  def create_url
    #URI("http://foo/bar/baz?search=FooBar").query #=> "search=FooBar"
    url_short = "http://" + (rand.to_s[2..11].to_i).to_s(36)
    #Url.create(:long_url => params[:long_url],:new_short_url => params[:new_short_url] )
  end
end
