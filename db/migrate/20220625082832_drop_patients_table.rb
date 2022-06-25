class DropPatientsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :patients, force: :cascade
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
