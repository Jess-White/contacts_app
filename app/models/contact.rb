class Contact < ApplicationRecord
  belongs_to :user
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates :email, format_with: /\A(\w|[.])+[@]\w+[.][a-z]{2,}\z/i, message: "is wrong"

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y") 
  end 

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
  end 

  #could also use full_name = #{first_name} #{last_name}"

  def from_japan
    from_japan = "+81 #{self.phone_number}"
  end 

  def middle_name
    middle_name = middle_name
  end

  def bio
    bio = bio
  end 
end


