class Link < ApplicationRecord
  belongs_to :groupbuy, optional: true
end
