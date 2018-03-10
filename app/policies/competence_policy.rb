class CompetencePolicy < ApplicationPolicy
   def index?
      true
   end
   def create?
      user.admin?
   end
end