# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
     can :read, Picture
    else
     can :read, Picture# надо придумать, что он может делать, если не зареган (ну или ничего)
    end
  end
end
