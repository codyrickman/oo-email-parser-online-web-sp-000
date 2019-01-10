# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end
  def parse
    parsed = @emails.split(",")
    parsed = parsed.split(" ")
    email_list =[]
    parsed.each {|email| email_list << email.strip}
    return email_list.uniq
  end

end
