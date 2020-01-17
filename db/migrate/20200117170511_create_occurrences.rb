class CreateOccurrences < ActiveRecord::Migration[6.0]
  def change
    create_table :occurrences do |t|
      t.references :event
      t.date :date
      t.boolean :beginners

      t.timestamps
    end
  end
end
