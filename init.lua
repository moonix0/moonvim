local modules = {
	"moonvim.plugins",
	"moonvim.core",
}

for _, a in ipairs(modules) do
	local ok, err = pcall(require, a)
	if not ok then
		error("Error calling " .. a .. err)
	end
end
