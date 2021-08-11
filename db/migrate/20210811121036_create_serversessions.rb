class CreateServersessions < ActiveRecord::Migration[6.1]
  def change
    create_table :serversessions do |t|
      t.string :token
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
