class BookingPolicy < ApplicationPolicy
  def create?
    return true
  end

  def update?
    record.costume.user == user
  end

  def destroy?
    record.user == user
  end

  def accept?
    record.costume.user == user
  end

  def reject?
    record.costume.user == user
  end
end
