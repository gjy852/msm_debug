class DirectorsController < ApplicationController
  def index
    @director = Director.all
  end

  def show_details
    @director = Director.find(params[:id])
  end

  def new
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show_details")
  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show_details")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
end
