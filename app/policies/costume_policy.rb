class CostumePolicy < ApplicationPolicy

  def create?
    return true
  end

  def show?
    return true
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
