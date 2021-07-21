class Command < ApplicationRecord
  belongs_to :meme
  validates :name,
            presence: true,
            uniqueness: {
              case_sensitive: false,
            },
            format: {
              with: /\A[a-zA-Z0-9]+\z/,
              message: 'only allows alphanumeric characters',
            }

  def self.search(search)
    search.present? ? where('name LIKE ?', "%#{search}%") : all
  end
end
