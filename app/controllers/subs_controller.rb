class SubsController < ApplicationController
	# skinny controllers, fat models
	# want controller to be as slim as possible,
		# D.R.Y and only worry about actions
		# CRUD - CREATE READ UPDATE and DELETE

		# index @ppl = Ppl.all
		# new @person = Ppl.new
		# create @person = Ppl.create(ppl_params)
		# edit @person = Ppl.find(parms[:id])
		# update @person = Ppl.find(params[:id]).update(ppl_params)
		# delete @person = Ppl.find(params[:id]).destroy

	# Model, all logical code
		# ordering, printing

  def index
  end

  def show
  end

  def new
  end

  def edit
  end
end
