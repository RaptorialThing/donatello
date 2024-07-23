class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #user_subscriber_account user_id

  def as_subscriber
    Subscriber.where(id: self.id).first_or_create
  end  
end
