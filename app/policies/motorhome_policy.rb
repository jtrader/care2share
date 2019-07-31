class MotorhomePolicy < ApplicationPolicy
    attr_reader :user, :motorhome
  
    def initialize(user, motorhome)
      @user = user
      @motorhome = motorhome
    end
  
    def update?
        is_owner?
         
    end
    def show?
        is_owner?
        
    end
    def index?
        
        
    end
    private

    def is_owner?
    
    end
  end