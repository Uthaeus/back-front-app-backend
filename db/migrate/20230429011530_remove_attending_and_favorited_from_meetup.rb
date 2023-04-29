class RemoveAttendingAndFavoritedFromMeetup < ActiveRecord::Migration[7.0]
  def change
    remove_column :meetups, :attending
    remove_column :meetups, :favorited
  end
end
