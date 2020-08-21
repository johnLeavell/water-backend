class ResultSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :temp, :trub, :stage, :tryp_ppb, :tryp_temp_corr, :coil_coll_100ml, :cable_power
end
