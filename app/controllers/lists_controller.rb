class ListsController < ApplicationController
 before_action :set_list, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @lists = List.all
  end

  def show
  	@list=List.find(params[:id])
  	@categories=@list.categories
  end

  def add_category(category)
    @list << category
  end

  def remove_category
    @list = List.find(params[:id])
    @category = params[:category]
    @list.categories.delete @category
    redirect_to action: 'show'
  end

  def set_list
      @list = List.find(params[:id])
    end

end
