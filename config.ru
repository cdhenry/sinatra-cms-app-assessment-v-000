
require './config/environment'
require "rails_erd/diagram/graphviz"


if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

Burner.create(name: "Family") unless Burner.find_by(name: "Family")
Burner.create(name: "Friends") unless Burner.find_by(name: "Friends")
Burner.create(name: "Work") unless Burner.find_by(name: "Work")
Burner.create(name: "Health") unless Burner.find_by(name: "Health")

use Rack::MethodOverride
run ApplicationController

RailsERD::Diagram::Graphviz.create
