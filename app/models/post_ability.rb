# frozen_string_literal: true

class PostAbility

    include CanCan::Ability

    def initialize(user)
      can :read, Post, published: true

      return unless user.present?
      can :read, Post
      can :create, Post
      return unless user.admin?
      can :manage, Post

    end
end
