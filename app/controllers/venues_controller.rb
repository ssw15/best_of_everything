class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new
    @venue.name = params[:name]
    @venue.address = params[:address]
    @venue.neighborhood_id = params[:neighborhood_id]

    if @venue.save
      controller = Rails.application.routes.recognize_path(request.referer)[:controller]
      action = Rails.application.routes.recognize_path(request.referer)[:action]

      if controller == "venues" && action == "new"
        redirect_to venues_url, :notice => "Venue created successfully."
      else
        redirect_to :back, :notice => "Venue created successfully."
      end
    else
      render 'new'
    end
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])

    @venue.name = params[:name]
    @venue.address = params[:address]
    @venue.neighborhood_id = params[:neighborhood_id]

    if @venue.save
      redirect_to venue_url(@venue.id), :notice => "Venue updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @venue = Venue.find(params[:id])

    @venue.destroy

    redirect_to venues_url, :notice => "Venue deleted."
  end
end
