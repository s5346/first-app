class GroupsController < ApplicationController
	def index
		@groups = Group.all
	end

	def show
	end

	def new
		@group = Group.new
	end

	def edit
	end

	def create
		@group = Group.new(group_params)
		@group.save

		redirect_to group_path
	end

	def update
	end

	def destroy
	end 

	private

	def group_params
		params.require(:group).permit(:title, :description)
	end
end
