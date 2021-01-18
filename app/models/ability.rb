# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      if user.is_admin?
        can :manage, Groupbuy
      end
    end
    can :read, :all
  end
end
