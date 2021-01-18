class AddAdminUser < ActiveRecord::Migration[6.1]
  def change
    User.create! do |u|
      u.email = Rails.application.credentials.admin[:email]
      u.password = Rails.application.credentials.admin[:password]
      u.is_admin = true
    end
  end
end
