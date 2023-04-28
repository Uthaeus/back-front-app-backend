class Meetup < ApplicationRecord
    validates_presence_of :title, :description, :time

    has_one_attached :image

    mount_uploader :image, MeetupUploader
end
