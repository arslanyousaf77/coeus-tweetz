class Post < ApplicationRecord
    belongs_to :user
    validates :content, presence: true
    validates_associated :user
end
