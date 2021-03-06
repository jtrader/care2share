class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show
    @user = authorize User.find(params[:id])
  end

  def create?
    @user = authorize User.find(params[:id])
  end

  def new?
    create?
  end

  def update?
    @user = authorize User.find(params[:id])
  end

  def edit?
    update?
  end

  def destroy?
    @user = authorize User.find(params[:id])
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
