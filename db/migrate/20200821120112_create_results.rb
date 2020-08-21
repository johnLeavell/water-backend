class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.string :date
      t.string :time
      t.string :temp
      t.string :trub
      t.string :stage
      t.string :tryp_ppb
      t.string :tryp_temp_corr
      t.string :coil_coll_100ml
      t.string :cable_power

      t.timestamps
    end
  end
end
