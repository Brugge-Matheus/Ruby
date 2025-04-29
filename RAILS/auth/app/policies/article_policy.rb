class ArticlePolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.all
    end
  end

  def new?
    user&.has_role? :writter
  end

  def create?
    new?
  end

  def edit?
    (user&.has_role? :editer) && (user&.isAdmin || user&.id == record&.user_id)
  end

  def update?
    edit?
  end

  def destroy?
    user&.isAdmin || user&.id == record&.user_id
  end
end
