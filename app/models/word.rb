class Word < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Word.where('name LIKE(?)', "%#{search}%")
    else
<<<<<<< Updated upstream
    Word.all
=======
      Word.all
>>>>>>> Stashed changes
    end
  end
end
