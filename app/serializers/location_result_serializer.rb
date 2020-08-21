class LocationResultSerializer < ActiveModel::Serializer
  attributes :id
  has_one :location
  has_one :result
end
