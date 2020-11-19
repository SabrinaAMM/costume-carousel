class CostumePolicy < ApplicationPolicy
  # no policies created for index and show methods,
  # as they don't require authentication

  def create?
    return true
  end

  def destroy?
    record.user == user
  end
end
