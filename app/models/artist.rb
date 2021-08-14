class Artist < ActiveRecord::Base
    belongs_to :gallery
    has_many :artworks
end