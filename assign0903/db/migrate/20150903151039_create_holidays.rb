class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :name
      t.date :Dateh

      t.timestamps
    end
  end
end
