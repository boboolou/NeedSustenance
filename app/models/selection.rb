class Selection
  include MongoMapper::Document

  # extend FriendlyId
  # friendly_id :name

  key :name, String

  belongs_to :user

  key :restaurant_ids , Array
  many :restaurants, :in => :restaurant_ids
end
