class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user not logged in
    can :read, :all
    cannot :read, User

    if user.admin?
      can[:manage, :all]
    else
      can :manage, User, id: user.id
    end
  end
end
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities