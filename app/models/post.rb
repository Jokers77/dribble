class Post < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, style: { thumb: '120x120', large: '300x400' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
