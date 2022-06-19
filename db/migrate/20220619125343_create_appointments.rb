class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
