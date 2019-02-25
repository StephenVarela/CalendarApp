class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :type_of_shift
      t.date :date
      t.text :notes
      t.timestamps
    end
  end
end
