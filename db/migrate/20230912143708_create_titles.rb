class CreateTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :titles do |t|
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
