# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.xn--9t4b11g8xjvnbcu.kr"

SitemapGenerator::Sitemap.create(
  :default_host => 'http://www.xn--9t4b11g8xjvnbcu.kr',
  :compress => false
  ) do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:

  add "/login", :priority => 1, :changefreq => 'weekly'
  add "/signup", :priority => 1, :changefreq => 'weekly'
end