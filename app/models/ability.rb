class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user || User.new # for guest
    @user.roles.each { |role| send(role.name.downcase) }

    if @user.roles.size == 0
      can :read, :all #for guest without roles
    end
  end

  def superadmin
    admin
  end

  def admin
  end

  def member
  end
end
