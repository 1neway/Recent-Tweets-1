class CreateTwitterusers < ActiveRecord::Migration
  def change
    create_table :twitterusers do |t|
      t.string :name
      t.string :handle
      t.timestamps
    end
  end
end
