class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
