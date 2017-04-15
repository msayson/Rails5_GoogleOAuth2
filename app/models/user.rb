# Model for a user of the application
class User < ApplicationRecord
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = (auth['info']['name'] || '') if auth['info']
    end
  end
end
