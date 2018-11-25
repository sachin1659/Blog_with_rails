class QuotesController < ApplicationController
	before_action :find_project, only: [:show,:edit,:update,:destroy]
	def index
		@quotes = Quote.all.order("created_at desc")
	end

	def new
		@quote = Quote.new
	end	

	def create
		@quote = Quote.new project_params
		if @quote.save
			redirect_to @quote, notice: "Nice Sachin! That quote was successfully saved!"
		else
			render 'new'
		end
	end

	def show 
	end

	private

	def find_project
		@quote = Quote.find(params[:id])
	end

	def project_params
		params.require(:quote).permit(:title, :description, :link)
	end
end
