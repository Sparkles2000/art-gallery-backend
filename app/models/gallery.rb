class Gallery < ActiveRecord::Base
    has_many :artists
    has_many :artworks
end