class Ability
  include CanCan::Ability

  def initialize(staff)
    staff ||= Staff.new
    if staff.role == "admin"
      can :manage, :all
    end
  end
end
