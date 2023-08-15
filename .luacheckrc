max_line_length = false

exclude_files = {
}

ignore = {
	-- Ignore global writes/accesses/mutations on anything prefixed with "Musician".
	-- This is the standard prefix for all of our global frame names and mixins.
	"11./^AlwaysShowVigorBar",

	-- Ignore unused self. This would popup for Mixins and Objects
	"212/self",

	-- Ignore unused event. This would popup for event handlers
	"212/event",

	-- Ignore unused frame. This would popup for onUpdate handlers
	"212/frame",
}

globals = {
	"AlwaysShowVigorBar",

	-- AddOn Overrides
}

read_globals = {
	-- Libraries

	-- 3rd party add-ons
}

std = "lua51+wow"

stds.wow = {
	-- Globals that we mutate.
	globals = {
	},

	-- Globals that we access.
	read_globals = {
		-- Lua function aliases and extensions

		-- Global Functions
		"wipe",

		-- Global Mixins and UI Objects
		UIParent = {
			fields = {
				"HookScript",
				"IsVisible",
				"GetScale",
			},
		},
		WorldFrame = {
			fields = {
				"IsVisible",
				"GetScale",
			},
		},
		UIParentBottomManagedFrameContainer = {
			fields = {
				"HookScript",
				"SetParent",
				"SetScale",
				"GetNumPoints",
				"GetPoint",
				"SetPoint",
			},
		},
		C_PlayerInfo = {
			fields = {
				"GetGlidingInfo"
			}
		},

		-- Global Constants
	},
}
