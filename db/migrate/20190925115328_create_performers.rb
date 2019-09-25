class CreatePerformers < ActiveRecord::Migration[6.0]
  def change
    create_table :performers do |t|
      t.string :name
      t.integer :telephone
      t.string :email

      t.timestamps
    end
  end
end
