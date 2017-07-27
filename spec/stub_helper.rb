
def valid_urls
  [
    "https://mail.google.com",
    "https://en.todoist.com",
    "https://calendar.google.com",
    "https://drive.google.com",
    "http://backend.turing.io/module4/",
    "https://github.com",
    "http://ruby-doc.org/",
    "https://turing.skedda.com",
    "https://www.fabricationgem.org/",
    "http://getbootstrap.com/getting-started/"
  ]
end

def create_spaced_out_reads

  len = valid_urls.length

  valid_urls.each_with_index do |url, i|
    (i+1).times do |n|
      Link.create(url: url)
    end
    (len-i).times do |n|
      Link.create(url: url, created_at: (Date.today - 2))
    end
  end

end
