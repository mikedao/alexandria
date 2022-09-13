class BookUsersController < ApplicationController
  def create
    BookUser.where(
      book: BookFacade.new(params[:isbn]).book, 
      user: current_user
      ).first_or_create
    redirect_to root_path
  end
end