class Meetup < ApplicationRecord
    validates_presence_of :title, :description, :time, :location

    mount_uploader :image, MeetupUploader
end
