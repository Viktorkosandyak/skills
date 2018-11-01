class CreateBoxers < ActiveRecord::Migration
  def change
    create_table :boxers do |t|
      t.string :name
      t.integer :weight

      t.timestamps null: false
    end
  end
end
