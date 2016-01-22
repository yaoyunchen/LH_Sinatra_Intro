class Message < ActiveRecord::Base

  validates :author,
    presence: true

  validates :content,
    presence: true

  validates :url,
    format: {with: URI::regexp(%w(http https))}
end