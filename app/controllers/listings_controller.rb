class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update, :destroy]
  before_action :form_vars, only: [:new, :edit, :index, :show]
  

  def index
    @listings = Listing.all
  end

  def show
    
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.new(listing_params)
    if @listing.save
        redirect_to @listing, notice: "Listing successfully created"
    else
      pp @listing.errors
      set_form_vars
      render "new", alert: "Something went wrong"
    end
  end

  def edit

  end

  def update
    @listing.update(listing_params)
    if @listing.save
        redirect_to @listing, notice: "Listing successfully updated"
    else
      pp @listing.errors
      set_form_vars
      render "edit", alert: "Something went wrong"
    end
  end

  def destroy
    @listing.destroy
    redirect_to listings_path, notice: "Listing successfully deleted"
  end
 
end


private 
def authorize_user
  if @listing.user_id != current_user.id
    flash[:alert] = "You don't have the required authorisation"
    redirect_to listings_path 
  end
end

def listing_params
  params.require(:listing).permit(:title, :brand_id, :year, :price, :category_id, :country_id, :description, :picture)
end

def set_listing
  @listing = Listing.find(params[:id])
end

def brand_names
  @brands = Brand.all
end

def form_vars
  @categories = Category.all
  # @categories = Listing.categories.keys
  @brands = Brand.all
  # @brands = Listing.brands.keys
  @countries = Country.all 
  # @countries = Listinbg.countries.keys
end
