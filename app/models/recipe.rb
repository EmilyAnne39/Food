class Recipe < ActiveRecord::Base
 has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :preserve_files => "false" }, :default_url => "/images/:style/missing.png"

 attr_accessor :remove_avatar
 before_validation { avatar.clear if remove_avatar == '1' }

 validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

 has_many :comments
 belongs_to :user
end
