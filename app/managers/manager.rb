class Manager
  def prepare_countries_data(countries)
    data = []
    countries.each do |country|
      data << {
                :id => country.id,
                :name => country.name,
                :area => country.area,
                :population => country.population,
                :literacy => country.literacy,
                :currency => "#{country.currency.name} - #{country.currency.symbol}",
                :timezone => country.time_zone.name,
                :wikilink => country.wiki_link
              }
      end
    data
  end

  def prepare_states_data(states)
    data = []
    states.each do |state|
      data << {
                :id => state.id,
                :name => state.name,
                :area => state.area,
                :population => state.population,
                :literacy => state.literacy,
                :wikilink => state.wiki_link
              }
    end
    data
  end

  def prepare_cities_data(cities)
    data = []
    cities.each do |city|
      data << {
                :id => city.id,
                :name => city.name,
                :area => city.area,
                :population => city.population,
                :literacy => city.literacy,
                :wikilink => city.wiki_link
              }
    end
    data
  end

  def country_datatable_columns
    ['Name', 'Area(sq.kms)', 'Population', 'Literacy Rate(in %)', 'Currency', 'TimeZone', 'WikiLink']
  end

  def state_datatable_columns
    ['Name', 'Area(sq.kms)', 'Population', 'Literacy Rate(in %)', 'WikiLink']
  end

  def city_datatable_columns
    ['Name', 'Area(sq.kms)', 'Population', 'Literacy Rate(in %)', 'WikiLink']
  end
end