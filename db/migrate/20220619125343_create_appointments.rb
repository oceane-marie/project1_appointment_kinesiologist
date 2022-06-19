class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.text :comment
      t.references :patient, null: false, foreign_key: true
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
