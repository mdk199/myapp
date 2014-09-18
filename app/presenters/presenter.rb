class Presenter
  include ActionView::Helpers
  attr_reader :path_helper

  def initialize()
    @path_helper = Rails.application.routes.url_helpers
  end

  def format_countries_data(countries_data)
    data_columns = countries_data.map do |country|
      {
        '0' => link_to(country[:name], path_helper.show_states_details_country_path(country[:id]), method: :get),
        '1' => number_with_precision(country[:area], :precision => 2),
        '2' => country[:population],
        '3' => number_with_precision(country[:literacy], :precision => 2),
        '4' => country[:currency],
        '5' => country[:timezone],
        '6' => country[:wikilink]
      }
    end
    return data_columns
  end

  def format_states_data(states_data)
    data_columns = states_data.map do |state|
      {
        '0' => link_to(state[:name], path_helper.show_cities_details_state_path(state[:id]), method: :get),
        '1' => number_with_precision(state[:area], :precision => 2),
        '2' => state[:population],
        '3' => number_with_precision(state[:literacy], :precision => 2),
        '4' => state[:wikilink]
      }
    end
  end

  def format_cities_data(cities_data)
    data_columns = cities_data.map do |city|
      {
        '0' => city[:name],
        '1' => number_with_precision(city[:area], :precision => 2),
        '2' => city[:population],
        '3' => number_with_precision(city[:literacy], :precision => 2),
        '4' => city[:wikilink]
      }
    end
  end

  def display_column_headers(columns)
    header_columns = columns.collect{|column_name| content_tag(:th, column_name)}
    return header_columns.join("").html_safe
  end

  def generate_datatable_json(params, records, record_count)
    json = {}
    json[:draw] = params[:draw] || -1
    json[:recordsTotal] = record_count
    json[:data] = records

    json.to_json
  end
end