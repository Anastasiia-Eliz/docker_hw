from project.config import config
from project.server import create_app
#from create_tables import db
app = create_app(config)
#migrate = Migrate(app, db)

if __name__ == '__main__':
	app.run(port=25000)
