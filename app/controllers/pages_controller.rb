class PagesController < ApplicationController
  def home
  end

  def about
  end

	def exporttwinfield
		@sheets = Sheet.all.order('date ASC')

	respond_to do |format|
     format.html {
        render :exporttwinfield
        }
     format.xml {
     render :xml => @sheets.to_xml
    }
    end
	end

end
