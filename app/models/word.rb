class Word < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Word.where('name LIKE(?)', "%#{search}%")
    end
  end
end
