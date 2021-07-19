class Courier < ApplicationRecord
    has_many :packages, dependent: :delete_all

    validates :name, presence: true
    validates :email, presence: true, length: { minimum: 10 }

end
