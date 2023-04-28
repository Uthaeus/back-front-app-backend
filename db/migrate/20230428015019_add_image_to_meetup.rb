class AddImageToMeetup < ActiveRecord::Migration[7.0]
  def change
    add_column :meetups, :image, :string
  end
end
