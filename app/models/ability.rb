class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    return unless user.present?

    can :read, Group, author_id: user.id
    can :read, Payment, author_id: user.id

    can :manage, Group, author_id: user.id
    can :manage, Payment, author_id: user.id

    return unless user.admin?

    can :manage, :all
  end
end
