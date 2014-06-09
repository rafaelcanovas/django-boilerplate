from {{ project_name }}.settings.base import *

# In production the SECRET_KEY must be retrieved from the environment
SECRET_KEY = os.environ.get('SECRET_KEY', SECRET_KEY)
