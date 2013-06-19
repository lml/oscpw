class CreateTextbooks < ActiveRecord::Migration
  def change
    create_table :textbooks do |t|
      t.string :name
      t.string :author
      t.string :isbn

      t.timestamps
    end
  end
end
