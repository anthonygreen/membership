def sign_in_as(email)
  visit "/"
  fill_in "Email", :with => email
  fill_in "Password", :with => "password"
  click_button "Log in"
end

def create_fixtures
  @admin = User.create!(email: 'admin@abscond.org', password: 'password', password_confirmation: 'password', role: 'admin')
  @roleholder = User.create!(email: 'roleholder@abscond.org', password: 'password', password_confirmation: 'password', role: '')
  @james1 = Person.create!(first_name: 'James', last_name: 'Darling')
  @james2 = Person.create!(first_name: 'James', last_name: 'Smith')
  @sarah = Person.create!(first_name: 'Sarah')
  @jon = Person.create!(first_name: 'Jon')
  @group1 = Group.create!(people: [@james1], users: [@roleholder])
  @group2 = Group.create!(people: [@james1, @jon], users: [@roleholder])
end
