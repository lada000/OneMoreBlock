# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.admin?
        can :manage, :all
      else
        can :read, Post
        can :create, Post
        can :update, Post, user_id: user.id
        can :destroy, Post, user_id: user.id
      end

      can :read, User
      can :update, User, id: user.id
    else
      can :read, Post
    end
  end
end
