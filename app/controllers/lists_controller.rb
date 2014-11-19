class ListsController < ApplicationController
 before_action :set_list, only: [:new, :create, :show, :edit, :update, :destroy, :add_category_list, :remove_category_list ]
  

  # On saute une etape de securite si on appel BOOK en JSON
  skip_before_action :verify_authenticity_token, only: [:new, :create, :show, :edit, :update, :destroy, :add_category_list, :remove_category_list]
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
    @list = List.new(list_params)

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
    a=rand(1..4)
    @list = List.find(params[:id])
    @category=Category.find(category_params[:id])
    @list.categories << @category
    #flash[:notice]="category added"
    respond_to do |format|
        format.html { redirect_to @list, notice: "#{@category.name} was successfully added to #{@list.name}." }
        format.json { render :show, status: :created, location: @list }
    end
  end

  def remove_category_list
    @list = List.find(params[:id])
    @category = Category.find(category_params[:id])
    @list.categories.delete @category
    redirect_to action: 'show'
  end

  def get_map
    @list = List.find(params[:id])
    @map = Map.find(1)

    respond_to do |format|
        format.html { redirect_to action: 'view_map', notice: "Voici votre itinéraire." }
        format.json
    end
  end

  def view_map
    @map = Map.find(1)
  end


  def set_list
      @list = List.find(params[:id])
  end

    # On ajoute les paramètres qu'on va envoyer avec le booking
    def category_params
      params.require(:category).permit(:id)
    end

    def list_params
      params.require(:list).permit(:name)
    end

end
