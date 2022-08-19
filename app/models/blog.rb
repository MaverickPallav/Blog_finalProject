class Blog < ApplicationRecord
    belongs_to(
    :authors,
    class_name: 'Author',
    foreign_key: 'authors_id',
    inverse_of: :blogs
    )
end
