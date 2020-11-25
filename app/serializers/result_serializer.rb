class ResultSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :temp, :trub, :stage, :tryp_ppb, :coil_coll_100ml
end
