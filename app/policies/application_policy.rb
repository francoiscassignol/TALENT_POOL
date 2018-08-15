class ApplicationPolicy < RailsAppPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def all?
  #   true
  # end

  # def index?
  #   true
  # end

  # def new?
  #   false
  # end

  # def show?
  #   true
  # end

  # def edit?
  #   true
  # end

  # def update?
  #   true
  # end

  # def destroy?
  #   true
  # end
end
