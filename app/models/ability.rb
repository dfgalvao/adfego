# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all 
    else 
      can [:read], Vacancy
    end
  end
end
