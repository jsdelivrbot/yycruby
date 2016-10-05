class Sponsor < ApplicationRecord
  validates_presence_of :company, :url, :description, :sponsoring, :logo

  has_attached_file :logo,
                    source_file_options: { all: '-auto-orient' },
                    styles: { original: '', thumb: '85x200#' },
                    default_url: 'placeholders/user_avatar_placeholder.svg'
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end
