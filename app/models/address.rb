class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :producer

  with_options presence: true do
    validates :postal_code
    validates :prefecture_id
    validates :municipality
    validates :house_number
    validates :phone_number
    validates :producer
  end

  validates :prefecture_id, numericality: { other_than: 0, message: 'を選択してください' }
end
