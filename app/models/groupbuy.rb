class Groupbuy < ApplicationRecord
  enum category: [:keycaps, :keyboard, :macropad, :keyswitches]

  has_many :proxy_links, inverse_of: :groupbuy
  accepts_nested_attributes_for :proxy_links, reject_if: :all_blank, allow_destroy: true
end
