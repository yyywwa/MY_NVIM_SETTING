return {
	"sainnhe/gruvbox-material",
	dependencies = {
		"folke/tokyonight.nvim",
	},
	version = "*",
	config = function()
		local function setColorschemesByTime(colorscheme)
			-- 获取当前时间
			local current_time = os.date("*t")

			-- 替换下面的值为你所在地的日出和日落时间（24小时制）
			local sunrise_hour = 6 -- 举例：日出时间为早上6点
			local sunset_hour = 20 -- 举例：日落时间为晚上6点

			-- 判断当前时间是否在日出和日落之间
			local is_daytime = current_time.hour >= sunrise_hour and current_time.hour < sunset_hour

			if is_daytime then
				print("现在是明亮的天空")
				vim.cmd("colorscheme " .. colorscheme.light[math.random(1, #colorscheme.light)])
			else
				vim.cmd("colorscheme " .. colorscheme.dark[math.random(1, #colorscheme.dark)])
			end
		end

		local colorschemes = {
			dark = {
				"gruvbox-material",
				"tokyonight",
			},
			light = {
				"tokyonight-day",
			},
		}

		setColorschemesByTime(colorschemes)

	end,
}
