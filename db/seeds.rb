admin = User.first_or_create(username: 'admin')
admin.password = 'admin'
admin.save!
