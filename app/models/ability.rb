class Ability
  include CanCan::Ability
  
  def initialize(user)
   if user.role? :admin
    can :delete, :all
    can :edit, :all
   else
    can :read, :all
  end
  
end
