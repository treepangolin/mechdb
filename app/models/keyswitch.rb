class Keyswitch < ApplicationRecord
  enum travel_type: [:linear, :tactile, :clicky]

  has_many :links, as: :linkable
  accepts_nested_attributes_for :links, reject_if: :all_blank, allow_destroy: true
end
