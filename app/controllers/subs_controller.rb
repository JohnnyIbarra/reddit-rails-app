class SubsController < ApplicationController
	# skinny controllers, fat models
	# want controller to be as slim as possible,
		# D.R.Y and only worry about actions
		# CRUD - CREATE READ UPDATE and DELETE

		# index @ppl = Person.all
		# show @person = Person.find(params[:id])
		# new @person = Person.new
		# create @person = Person.create(ppl_params)
		# edit @person = Person.find(parms[:id])
		# update @person = Person.find(params[:id]).update(ppl_params)
		# delete @person = Person.find(params[:id]).destroy
		
		#callbacks
			# before_action, called before entering a method
			# after_action, called after entering a method 
			# skip_before_action, skips before action
			# skip_after_action, skips the after actions 

			# before_action :method_to_call, (only/except): [:index, :show]


	# Model, all logical code
		# ordering, printing

	before_action :set_sub, only: [:show, :update, :edit, :destroy]
	# before_action :set_sub, except [:index, :new, :create]


	# HOW TO DO RAKE NOTES 
	# IN TERMINAL TYPE BUNDLE EXEC RAKE NOTES

		# TODO anything thas needs to be done
		# FIXME fix bugs or errors
		# OPTIMIZE refactor

		# TODO fill out index views 
		# FIXME  page not loading
		# OPTIMIZE change the color of the text 

	def index
		@subs = Sub.all
		# This also renders a webpage/views
		# views/subs/index.html.erb

		#default render html
		# but you can also render json, xml or redirect 
  end

	#gets
	def show
		# default renders show views/shows/sub/show.html
  end

	# get request
	def new
		# creates a sub in memory
		@sub = Sub.new
		# renders the sub form
		render partial: "form"
	end
	
	# post / creates something into the database
	def create
		@sub = Sub.create(sub_params)
		if @sub.save
			redirect_to root_path
		else
			render :new
		end
	end

	# get
	def edit
		#@sub = Sub.find(params[:id])
		# render the edit form
		render partial: "form"
	end
	
	#put
	def	update
		#@sub = Sub.find(params[:id])
		if @sub.update(sub_params)
			redirect_to @sub
		else
			render :edit 
		end
	end

	# delete
	def destroy
	#	@sub = Sub.find(params[:id])
		@sub.destroy
		redirect_to root_path
	end

	private
		def sub_params
			params.require(:sub).permit(:name)
		end

		def set_sub
			@sub = Sub.find(params[:id])
		end

end
