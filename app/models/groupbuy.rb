require 'action_view'
include ActionView::Helpers::DateHelper

class Groupbuy < ApplicationRecord
  enum category: [:keycaps, :keyboard, :macropad, :keyswitches]

  has_many :proxy_links, inverse_of: :groupbuy
  accepts_nested_attributes_for :proxy_links, reject_if: :all_blank, allow_destroy: true

  def end_distance
    endDate = self[:end]
    if Time.now < endDate
      "ends in #{distance_of_time_in_words Time.now, endDate}"
    else
      "ended #{distance_of_time_in_words Time.now, endDate} ago"
    end
  end
end
