local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Reducer = require(ReplicatedStorage.Shared.Reducer)
local Rodux = require(ReplicatedStorage.Packages.Rodux)

return Rodux.Store.new(Reducer, nil, {
	Rodux.loggerMiddleware,
	Rodux.thunkMiddleware,
})
