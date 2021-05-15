class Preach < ApplicationRecord
    has_many :progresses
    has_many_attached :files

    before_destroy :check_if_can_be_destroyed

    private
    def check_if_can_be_destroyed
        if self.progresses.count > 0
            throw(:abort)
        end
    end
end