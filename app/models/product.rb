class Product < ApplicationRecord

    scope :sorted, lambda { order("id ASC")}
    scope :newest_first, lambda { order("created_at DESC")}

end
