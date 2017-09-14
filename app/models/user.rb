class User < ActiveRecord::Base
  has_many :reviews, foreign_key: 'guest_id', through: :trips
  has_many :listings, foreign_key: 'host_id'
  has_many :reservations, foreign_key: 'host_id', through: :listings
  has_many :trips, class_name: 'Reservation', foreign_key: 'guest_id'


end
