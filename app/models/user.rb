class User < ApplicationRecord
  has_many :mangak
  has_many :comments, dependent: :destroy
  has_many :active_relationships, class_name:  "Relationship", foreign_key: "follower_id",
    dependent: :destroy
  has_many :following, through: :active_relationships,  source: :followed
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
          :omniauthable, omniauth_providers: [:google_oauth2]

def self.new_with_session params, session
    super.tap do |user|
      if data = session["devise.facebook_data"] &&
        session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth auth
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
    end
  end

end
