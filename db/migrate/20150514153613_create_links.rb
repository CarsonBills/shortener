class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :original
      t.integer :clicks, :default => 0

      t.timestamps
    end
  end
end
