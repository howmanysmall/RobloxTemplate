local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Roact = require(ReplicatedStorage.Packages.Roact)
local RoduxHooks = require(ReplicatedStorage.Packages.RoduxHooks)

export type IStoreComponentProps = {
	Store: any, -- Rodux.Store
}

local function StoreComponent(props: IStoreComponentProps)
	return Roact.createElement(RoduxHooks.Provider, {
		store = props.Store,
	}, props[Roact.Children])
end

return StoreComponent
