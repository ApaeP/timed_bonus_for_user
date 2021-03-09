class CreatePromos < ActiveRecord::Migration[6.1]
  def change
    create_table :promos do |t|
      t.integer :t_minutes
      t.boolean :active, default: true, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
