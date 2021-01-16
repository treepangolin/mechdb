class ProxyLink < ApplicationRecord
  enum region: [:canada, :united_states, :europe, :united_kingdom, :asia, :oceania, :global]

  belongs_to :groupbuy, optional: true
end
