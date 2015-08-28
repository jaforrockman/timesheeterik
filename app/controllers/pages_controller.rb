class PagesController < ApplicationController
  def home
  end

  def about
  end

	def exporttwinfield
		@sheets = Sheet.all.order('date ASC')
	end

end
