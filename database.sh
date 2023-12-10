# Create DB
python create_db.py

# Start containers
docker run -d --name app1 -e DATABASE_URI=sqlite:////tmp/test.db world_hello
docker run -d --name app2 -e DATABASE_URI=sqlite:////tmp/test.db world_hello
docker run -d --name redis redis
