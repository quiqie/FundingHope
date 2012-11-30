class Ability
  include CanCan::Ability
  
  def initialize(user)
    can :read, :all
    can :destroy, :admin
    can :edit, :author
    can :edit, :admin
  end
  
end