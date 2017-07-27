class Link < ApplicationRecord
  default_scope { where(created_at: (Time.now - 24.hours)..Time.now) }
  validates :url, presence: true

  def self.hot_reads
    select('links.url, count(links.url) as links_count')
      .group('links.url')
      .order('links_count DESC')
      .limit(10)
  end
end
