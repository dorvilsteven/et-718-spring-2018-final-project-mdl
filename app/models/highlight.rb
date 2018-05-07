class Highlight < ApplicationRecord
    has_many :users
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
                    length: { minimum: 10 }
end
