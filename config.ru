require_relative './config/environment'

require './config/environment'

use Rack::MethodOverride
run ApplicationController
use TasksController
use UsersController
