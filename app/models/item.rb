class Item < ApplicationRecord
    default_scope { where(deleted_at: nil) }

    def soft_delete
        update_attribute(:deleted_at, Time.now)
    end

    def restore
        update_attribute(:deleted_at, nil)
    end

    def deleted
        !deleted_at.nil?
    end

end
