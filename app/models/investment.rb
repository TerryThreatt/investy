class Investment < ActiveRecord::Base
    validates :name, :date, :amount, :kind, :user_id presence: true
    belongs_to :user
end