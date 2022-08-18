class Author < ApplicationRecord
    has_many(
    :blogs,
    class_name: 'author',
    foreign_key: 'authors_id',
    inverse_of: :authors,
    dependent: :destroy
    )
end
