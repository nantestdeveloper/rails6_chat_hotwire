class Post < ApplicationRecord
    after_create_commit { broadcast_prepend_later_to 'posts' }
    after_update_commit { broadcast_replace_later_to 'posts' }
    after_destroy_commit { broadcast_remove_to 'posts' }
    # belongs_to :sender, class_name: 'User'
    # belongs_to :receiver, class_name: 'User'
    validates :body, length: { minimum: 1, maximum: 280 }
end


