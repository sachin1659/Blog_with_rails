class QuotesController < ApplicationController
	before_action :find_quote, only: [:show,:edit,:update,:destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@quotes = Quote.all.order("created_at desc")
	end

	def new
		@quote = Quote.new
	end	

	def create
		@quote = Quote.new quote_param
		if @quote.save
			redirect_to @quote, notice: "Nice Sachin! That quote was successfully saved!"
		else
			render 'new'
		end
	end

	def show 
	end

	def edit 
	end

	def update
		if @quote.update quote_param
			redirect_to @quote, notice: "Nice Sachin! That quote was successfully updated!"
		else
			render 'edit'
		end
	end

	def destroy
		@quote.destroy
		redirect_to quotes_path
	end

	private

	def find_quote
		@quote = Quote.friendly.find(params[:id])
	end

	def quote_param
		params.require(:quote).permit(:title, :description, :link, :slug)
	end
end
