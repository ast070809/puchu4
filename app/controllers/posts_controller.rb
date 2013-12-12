class PostsController < ApplicationController

	def new
	end

	def show
	end

	def index
		@posts = Post.all
	end
end
