class ListsController < ApplicationController
 before_action :set_list, only: [:show, :edit, :update, :destroy, :add_category_list, :remove_category_list ]

  # GET /categories
  # GET /categories.json
  def index
    @lists = List.all
  end

  def show
  	@list=List.find(params[:id])
  	@categories=@list.categories
  end

  def new
    @list = List.new
  end

  def edit
  end

  def create
    @category = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_category_list
    @category=Category.new(category_params)
    @list = List.find(params[:id])
    @list.categories << @category

    respond_to do |format|
      if @list.save
        format.json
      else
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def remove_category_list
    @list = List.find(params[:id])
    @category = params[:category]
    @list.categories.delete @category
    redirect_to action: 'show'
  end

  def set_list
      @list = List.find(params[:id])
  end

    # On ajoute les paramètres qu'on va envoyer avec le booking
    def category_params
      params.require(:category).permit(:name, :image)
    end

end
