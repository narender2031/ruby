class Information
  attr_accessor :title, :first_name, :last_name
  # when we calll the attr reader method ruby create this method for us
  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
     @first_name + " " + @middle_name + " " +@last_name
  end

  def full_name_with_title
     @title + " " + full_name()
    #  call method with () it retirn string
  end
end

name = Information.new("Mr.", "Narender", "", "Singh")

puts name.full_name_with_title

# to_s method is use to convert the the method return into string