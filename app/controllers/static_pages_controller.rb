class StaticPagesController < ApplicationController
  def home
   @categories = Category.all
  end

  def help
        # session[:cart] = nil
      if current_user.admin?
        
      else
        redirect_to "/" 
      end
        @users = User.all
    
        
  end
  
  
  def makeadmin
    @user = User.find_by(id: params[:id])
     @user.update_attribute(:admin, true)
     redirect_to "/"
  end
  
  
  def removeadmin
      @user = User.find_by(id: params[:id])
     @user.update_attribute(:admin, false)
     redirect_to "/"
  end
  
  
    
    
    

  def about
    
  end

  def contact
    
   
  end
  
  
  def adminsection
    @orders = Order.all
    
  end
  
  
  def paid
    @order = Order.last
    
    @order.update_attribute(:status, 'This Has Been Paid')
    
    
  end
  
  
  def category 
    cringe = params[:title]
    
    @items = Item.where("category like ?", cringe)
    
    
  end
  
end
