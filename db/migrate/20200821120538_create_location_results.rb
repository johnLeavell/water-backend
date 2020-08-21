class CreateLocationResults < ActiveRecord::Migration[6.0]
  def change
    create_table :location_results do |t|
      t.references :location, null: false, foreign_key: true
      t.references :result, null: false, foreign_key: true

      t.timestamps
    end
  end
end
