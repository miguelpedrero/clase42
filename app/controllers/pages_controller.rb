class PublicsController < ApplicationController
  def index
	@users = User.all
	end

  def save_user
  	User.create({ name: params[:name], email: params[:email],age: params[:age]})
  	redirect_to pages_index_path
  	end
end