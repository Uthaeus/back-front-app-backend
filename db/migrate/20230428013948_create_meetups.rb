class CreateMeetups < ActiveRecord::Migration[7.0]
  def change
    create_table :meetups do |t|
      t.string :title
      t.text :description
      t.datetime :time
      t.integer :attending, default: 0
      t.integer :favorited, default: 0

      t.timestamps
    end
  end
end
