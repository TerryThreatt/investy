class User < ActiveRecord::Base

    has_secure_password
    has_many :investments
    validates :name, presence: true
    validates :password, :presence => true,
                         :confirmation => true,
                         :length => {:within => 6..40},
                         :on => :create


    validates :password, :presence => true,
                         :confirmation => true,
                         :length => {:within => 6..40},
                         :on => :update

    validates :email, uniqueness: true
end