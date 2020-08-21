class Result < ApplicationRecord
    has_many :location_results
    has_many :results, through: :location_results
end
