class BookingPolicy < ApplicationPolicy
  def create?
    return true
  end

  def edit?
    record.costume.user == user
  end

  def destroy?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
