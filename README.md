# mira.random.

This test fixes a random number.
For more info, see random-sample.script.

# USAGE
```
local mira_random = require("mira.random.random")

function init(self)

	self.state = mira_random.new(os.time())

	for i = 1, 5 do
		self.state.reset();
		for j = 1, 10 do
			local value = self.state.range(1, 10)
			print("index " .. i .. "=" .. value)
		end
		print("\n")
	end	
end

```

