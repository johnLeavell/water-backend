# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# results = [
#     {date: "08/12/20", time: "09:32:23", temp: "22.39", trub: "8.94", stage: "9.93", tryp_ppb: "20.88", tryp_temp_corr: "23.03", coil_coll_100ml: "1020.06", cable_power: "4.72"},
#     {date: "08/11/20", time: "10:33:29", temp: "25.44", trub: "6.94", stage: "9.48", tryp_ppb: "33.93", tryp_temp_corr: "30.22", coil_coll_100ml: "1213.28", cable_power: "4.69"},
#     {date: "08/09/20", time: "12:33:43", temp: "24.99", trub: "6.99", stage: "1.01", tryp_ppb: "44.99", tryp_temp_corr: "24.55", coil_coll_100ml: "1500.99", cable_power: "4.99"},
#     {date: "07/31/20", time: "09:33:49", temp: "24.88", trub: "8.55", stage: "1.09", tryp_ppb: "25.55", tryp_temp_corr: "1608.33", coil_coll_100ml: "1240.03", cable_power: "4.77"}
# ]

# results.each { |result| Result.create(result) }


# LocationResult.create(location_id: Location.ids.sample, result_id: Result.ids.sample)
# LocationResult.create(location_id: Location.ids.sample, result_id: Result.ids.sample)
# LocationResult.create(location_id: Location.ids.sample, result_id: Result.ids.sample)
require 'csv'

CSV.foreach(Rails.root.join('lib/loomis_seeds.csv'), headers: true) do |row|
        Result.create({
            date: row[0],
            time: row[1],
            temp: row[2],
            trub: row[3],
            stage: row[4],
            tryp_ppb: row[5],
            tryp_temp_corr: row[6],
            coil_coll_100ml: row[7],
            cable_power: row[8]
        })
end