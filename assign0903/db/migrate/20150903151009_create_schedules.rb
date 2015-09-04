class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :Support, index: true
      t.string :vacation
      t.date :Date

      t.timestamps
    end
  end
end
