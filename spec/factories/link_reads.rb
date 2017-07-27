FactoryGirl.define do

  valid_urls = [
    "https://mail.google.com",
    "https://en.todoist.com",
    "https://calendar.google.com",
    "https://drive.google.com",
    "http://backend.turing.io/module4/",
    "https://github.com",
    "http://ruby-doc.org/",
    "https://turing.skedda.com",
    "https://www.fabricationgem.org/",
    "http://getbootstrap.com/getting-started/",
    "http://ncase.me/polygons/",
    "https://turing-fridays.firebaseapp.com/",
    "https://apidock.com/ruby/DateTime/strftime",
    "https://stackoverflow.com/",
    "https://www.codewars.com/dashboard",
    "http://bencrowder.net/files/vim-fu/",
    "http://bigocheatsheet.com/",
    "http://api.jquery.com/",
    "http://www.usatf.org/routes/map/"
  ]

  sequence :url_address, valid_urls.cycle do |n|
    "#{n}"
  end

  factory :link_read do
    url { generate(:url_address) }
  end
end
