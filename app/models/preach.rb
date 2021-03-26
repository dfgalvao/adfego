class Preach < ApplicationRecord
    has_many :progresses
    has_many_attached :files
end