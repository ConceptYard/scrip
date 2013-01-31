class CreateScripSubscriptions < ActiveRecord::Migration
  def change
    create_table :scrip_subscriptions do |t|
      t.integer :subscription_type_id

      t.timestamps
    end
  end
end
