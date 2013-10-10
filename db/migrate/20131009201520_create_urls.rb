class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long_url
      t.string :new_short_url

      t.timestamps
    end
  end
end
