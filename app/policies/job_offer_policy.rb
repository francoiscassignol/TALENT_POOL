class JobOfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def index?
  #   false
  # end

  # def show?
  #   true
  # end

  # def new
  #   false
  # end

  # def create
  #   false
  # end

  # def edit
  #   false
  # end

  # def update
  #   false
  # end

  # def destroy
  #   false
  # end

end
