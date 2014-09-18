class StatesController < ApplicationController
layout 'layouts/default'
  before_filter :init_manager_and_presenter

  def show_cities_details
    @state = State.find_by_id(params[:id])
    cities = City.where(state_id: @state.id)
    @columns_headers = @manager.city_datatable_columns
    respond_to do |format|
      format.html {render :template => '/states/show_cities'}
      format.json do 
        cities_data = @manager.prepare_cities_data(cities)
        cities_data_json = @presenter.format_cities_data(cities_data)
        render :json => @presenter.generate_datatable_json(params, cities_data_json, cities_data.count)
      end
    end
  end

  private
  def init_manager_and_presenter
    @manager = Manager.new
    @presenter = Presenter.new
  end

end