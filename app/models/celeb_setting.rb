class CelebSetting < ApplicationRecord
  belongs_to :celeb_id, class_name: "User" 
end
