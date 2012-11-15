class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    # Define a few sample abilities
    if user.is? :admin
      can       :manage, Article
      can       :manage, Comment
    else
      can       :read, Article
      cannot    :manage, Comment
    end

  end
end
