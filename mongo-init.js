db.createUser({
  user: "admin",
  pwd: "admin",
  roles: [{ role: "readWrite", db: "flask_db" }]
});
