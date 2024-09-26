class ApplicationMailbox < ActionMailbox::Base
  routing (/[0-9]+-comment@/i) => :comments
  routing :all => :backstop
  # routing /something/i => :somewhere
end
