require './lib/bike'
require './lib/dockingStation'

station = DockingStation.new

station.release_bike # returns an error message as no bike is available

station.dock(Bike.new) # station instance includes the bike instance

station.dock(Bike.new) # returns an error message as the station is full

station.bike # returns the bike instance docked at the station

bike.working? # true or false

station.release_bike # returns a bike instance
