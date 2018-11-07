class VinylPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if record.user == user
        scope.where(user: user) # the user views only his vinyls
      else
        scope.all # Anyone can view any vinyl
      end
    end

    def create?
      true
    end

    def update?
      # If I create the restaurant => true
      # Otherwise => false
      # - user => current_user from Devise
      # - record => @vinyl
      user_is_owner?
    end

    def destroy?
      user_is_owner?
    end

    private

    def user_is_owner?
      record.user == user
    end
  end
end
