class CountriesController < ApplicationController
  layout "layouts/default"
  before_filter :init_manager_and_presenter

  def index
    countries = Country.all
    @columns_headers = @manager.country_datatable_columns

    respond_to do |format|
      format.html {render :index}
      format.json do
        countries_data = @manager.prepare_countries_data(countries)
        countries_data_json = @presenter.format_countries_data(countries_data)
        render :json => @presenter.generate_datatable_json(params, countries_data_json, countries_data.count)
      end
    end
  end

  def show_states_details
    @country = Country.find_by_id(params[:id])
    states = State.where(country_id: @country.id)
    @columns_headers = @manager.state_datatable_columns
    respond_to do |format|
      format.html {render :template => '/countries/show_states'}
      format.json do 
        states_data = @manager.prepare_states_data(states)
        states_data_json = @presenter.format_states_data(states_data)
        render :json => @presenter.generate_datatable_json(params, states_data_json, states_data.count)
      end
    end
  end

  private
    def init_manager_and_presenter
      @manager = Manager.new
      @presenter = Presenter.new
    end
end