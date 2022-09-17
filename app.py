from project.config import config
from flask_migrate import Migrate
from project.server import create_app
from create_tables import db
app = create_app(config)
migrate = Migrate(app, db)

if __name__ == '__main__':
	app.run(port=80,
		debug=True)
