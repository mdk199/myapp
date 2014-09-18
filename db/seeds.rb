# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

p "Seeding Countries"
Country.create([{name: 'C1'},{name: 'C2'}])
countries = Country.all

p "Seeding states"
State.create([{name: 'S1', country: countries[0] }, 
              {name: 'S2', country: countries[0] },
              {name: 'S3', country: countries[0] },
              {name: 'S4', country: countries[0] },
              {name: 'S5', country: countries[1] }, 
              {name: 'S6', country: countries[1] },
              {name: 'S7', country: countries[1] },
              {name: 'S8', country: countries[1] }
              ])
states = State.all

p "Seeding cities"
City.create([{name: 'C1', area: 4200, population: 100, literacy:80.0, state: states[0]},
             {name: 'C2', area: 1200, population: 200, literacy:99.0, state: states[0]},
             {name: 'C3', area: 2200, population: 700, literacy:90.0, state: states[0]},
             {name: 'C4', area: 2600, population: 800, literacy:50.0, state: states[0]},
             {name: 'C5', area: 600, population: 900, literacy:70.0, state: states[0]},
             {name: 'C11', area: 200, population: 100, literacy:90.0, state: states[1]},
             {name: 'C12', area: 1200, population: 100, literacy:98.0, state: states[1]},
             {name: 'C13', area: 2700, population: 700, literacy:96.0, state: states[1]},
             {name: 'C14', area: 600, population: 300, literacy:53.0, state: states[1]},
             {name: 'C15', area: 900, population: 980, literacy:77.8, state: states[1]},
             {name: 'C21', area: 200, population: 100, literacy:90.0, state: states[2]},
             {name: 'C22', area: 1200, population: 190, literacy:98.0, state: states[2]},
             {name: 'C23', area: 2700, population: 700, literacy:96.0, state: states[2]},
             {name: 'C24', area: 600, population: 800, literacy:53.0, state: states[2]},
             {name: 'C25', area: 900, population: 980, literacy:77.8, state: states[2]},
             {name: 'C31', area: 200, population: 100, literacy:90.0, state: states[3]},
             {name: 'C32', area: 1200, population: 190, literacy:98.0, state: states[3]},
             {name: 'C33', area: 2700, population: 700, literacy:96.0, state: states[3]},
             {name: 'C34', area: 600, population: 800, literacy:53.0, state: states[3]},
             {name: 'C35', area: 900, population: 980, literacy:77.8, state: states[3]},
             {name: 'C41', area: 2200, population: 700, literacy:90.0, state: states[4]},
             {name: 'C42', area: 2600, population: 800, literacy:50.0, state: states[4]},
             {name: 'C43', area: 600, population: 900, literacy:70.0, state: states[4]},
             {name: 'C44', area: 200, population: 100, literacy:90.0, state: states[4]},
             {name: 'C45', area: 1200, population: 100, literacy:98.0, state: states[4]},
             {name: 'C46', area: 2700, population: 700, literacy:96.0, state: states[4]},
             {name: 'C51', area: 1200, population: 190, literacy:98.0, state: states[5]},
             {name: 'C52', area: 2700, population: 700, literacy:96.0, state: states[5]},
             {name: 'C53', area: 600, population: 800, literacy:53.0, state: states[5]},
             {name: 'C54', area: 900, population: 980, literacy:77.8, state: states[5]},
             {name: 'C55', area: 2200, population: 700, literacy:90.0, state: states[5]},
             {name: 'C61', area: 1200, population: 190, literacy:98.0, state: states[6]},
             {name: 'C62', area: 2700, population: 700, literacy:96.0, state: states[6]},
             {name: 'C71', area: 600, population: 800, literacy:53.0, state: states[7]},
             {name: 'C72', area: 900, population: 980, literacy:77.8, state: states[7]}
            ])

p "Seeding Currencies"
Currency.create([{name: 'Ruppee', symbol: 'RS', country: countries[0] },
                 {name: 'Yen', symbol: 'YEN', country:countries[1]}
                ])

p "Seeding Timezone"
TimeZone.create([{name: 'IST', offset: +19800, country: countries[0] },
                 {name: 'MST', offset: -25200, country: countries[1]}
                ])



