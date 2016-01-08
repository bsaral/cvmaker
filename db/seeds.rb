# encoding: utf-8


User.create(:username => "bsaral", :password => "123", :password_confirmation => "123", :role => "guest")

User.create(:username => "person", :password => "123", :password_confirmation => "123", :role => "guest")

User.create(:username => "boss", :password => "123", :password_confirmation => "123", :role => "manager")

User.create(:username => "admin", :password => "123", :password_confirmation => "123", :role => "admin")

