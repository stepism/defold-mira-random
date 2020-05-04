local M = {}

function M.new(seed)
	local instance = {}
	instance.prev_seed = 9999;

	function instance.reset()
		math.randomseed(instance.prev_seed)
	end
			
	function instance.set_seed(seed)
		math.randomseed(seed)
		instance.prev_seed = seed;
	end

	function instance.range(min, max)
		return math.random(min, max)
	end

	instance.set_seed(seed)

	return instance
end

return M