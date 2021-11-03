class CreateEvent < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :data

      t.timestamps
    end
  end
end
