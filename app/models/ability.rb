class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user not logged in
    can :manage, User, id: user.id
  end
end
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities