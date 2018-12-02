class Coment < ApplicationRecord
    validates :text, presence: true
    belongs_to :topic
end
