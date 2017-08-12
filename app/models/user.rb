class User < ApplicationRecord
validates :name, presence: true, format: { with: /\A[a-zA-Z\s]+\Z/i, message: "Only letters are allowed"}
validates :email, presence: true, uniqueness: {case_sensitive: false}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "invalid email"}
validate :date_of
validates :password, presence: true,  confirmation: true , length: {minimum: 8}
validates :password_confirmation, presence: true, length: {minimum: 8}
def date_of
	if dob.present? && dob > Date.today
		errors.add(:dob, "date should be in past")
	end
end

end
