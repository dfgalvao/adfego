class Notice < ApplicationRecord
    has_many_attached :files
    has_rich_text :content
end
