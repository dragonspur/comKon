# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create(:name => 'jame',:email=>'james_k_xu@yahoo.ca',:password=>'123456',:time_zone => 'Central America');
Role.create(:name => 'admin');
Role.create(:name => 'general');
UserRole.create(:user_id=> 1, :role_id=>1);
