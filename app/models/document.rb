class Document < ActiveRecord::Base
   belongs_to :user

   validates :user_id, presence: true
   validates :title, presence: true
   validates :content, presence: true

   has_many :sections, dependent: :destroy
end
