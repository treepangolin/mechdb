# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      if user.admin?
        can :manage, Groupbuy
        can :manage, Keyswitch
      end
    end
    can :read, :all
  end
end
