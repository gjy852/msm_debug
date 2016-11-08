class DirectorsController < ApplicationController
  def index
    @director = Director.all
  end

  def show_details
    @director = Director.find(params[:id])
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render('create_row')
    # redirect_to("/create_director/" + @director.dob.to_s + "," + @director.name.to_s + "," + @director.bio.to_s + "," + @director.image_url.to_s)

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

    render('update_row')
    # The link below gives an error message - why?
    # redirect_to("/update_director/" + @director.id.to_s)
  end

  def destroy
    @director = Director.find_by({ :id => params[:id] })
    @director.destroy

    #This function does not work - why?
    render('destroy.html.erb')
  end

  def new_form

    render ('/directors/new_form')
  end
end
