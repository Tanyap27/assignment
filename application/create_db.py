# create_db.py
from app import db, User
db.create_all()

# Create users
admin_user = User(username='admin', password='admin_123', is_admin=True)
developer_user = User(username='developer', password='developer_456', is_admin=False)

db.session.add(admin_user)
db.session.add(developer_user)
db.session.commit()
