class Section < ActiveRecord::Base
  belongs_to :document

  default_scope -> { order('created_at DESC') }
  validates :document_id, presence: true
  validates :content, presence: true
end

