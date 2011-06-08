class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :time_zone
  has_many :posts, :dependent => :destroy
  has_many :events, :dependent => :destroy
  has_many :user_roles, :dependent => :destroy
  has_many :roles ,:through=> :user_roles
  def role?(role)
        return  !!self.roles.find_by_name(role)
  end
  def owner?(obj)
	return !!(obj.try(:user_id) == self.id)
  end

end
