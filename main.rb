require_relative 'crud'
require_relative 'student'

class Main
  main = Main.new

  users = []
  users << ivan = Student.new("Ivan", "Tolokneev", "tolokneev@gmail.com", "password1")
  users << max = Student.new("Max", "Gubskiy", "guba@gmail.com", "password2")
  users << mashrur = Student.new("Mashrur", "Hoosein", "hoosain@mail.com", "password3")

  users.each do |user_record|
    user_record.password = user_record.create_hash_digest(user_record.password)
  end

  puts users

  email = "tolokneev@gmail.com" 
  pass = "password1"

  users.each do |user_record|
    if user_record.email == email && user_record.verify_hash_digest(user_record.password) == pass
      puts "Welcome, #{user_record.first_name}!"
      abort "Verification was successful"
    end
  end

  puts "Credentails were not correct"
end