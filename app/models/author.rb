class Author < ApplicationRecord
    has_many(
    :blogs,
    class_name: 'Blog',
    foreign_key: 'authors_id',
    inverse_of: :authors,
    dependent: :destroy
    )
end
