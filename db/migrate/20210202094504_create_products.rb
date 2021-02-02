class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.jsonb :info, default: {}

      t.timestamps
    end
  end
end
