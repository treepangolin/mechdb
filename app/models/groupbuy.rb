require 'action_view'
include ActionView::Helpers::DateHelper

class Groupbuy < ApplicationRecord
  enum category: [:keycaps, :keyboard, :macropad, :keyswitches]

  has_many :links, as: :linkable
  accepts_nested_attributes_for :links, reject_if: :all_blank, allow_destroy: true

  def end_distance
    endDate = self[:end_date]
    startDate = self[:start_date]

    if startDate > Date.today
      "starts in #{distance_of_time_in_words Date.today, startDate}"
    elsif Date.today < endDate
      "ends in #{distance_of_time_in_words Date.today, endDate}"
    elsif Date.today == endDate
      "ends today"
    else
      "ended #{distance_of_time_in_words Date.today, endDate} ago"
    end
  end
end
