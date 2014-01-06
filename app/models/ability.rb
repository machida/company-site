class Ability
  include CanCan::Ability

  def initialize(staff)
    staff ||= Staff.new
    if staff.role == "admin"
      can :manage, :all
    else
      can :read, Article.published
    end
  end
end
