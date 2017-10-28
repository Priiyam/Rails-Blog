class PagesController < ApplicationController
	def about #view name
		@title = 'About Us';
		@content = 'These are some sample content.';
	end
end
