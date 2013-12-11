class Video < ActiveRecord::Base
	belongs_to :job

	def embed_url
		uri = URI.parse(self.video_url)
		uri_params = CGI.parse(uri.query)
		video_id = uri_params["v"][0]
		return "//"+uri.host+"/embed/"+video_id+"?&showinfo=0&autohide=1&rel=0"
	end
end
