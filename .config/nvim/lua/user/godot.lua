-- source: https://simondalvai.org/blog/godot-neovim/

local paths_to_check = { '/', '/../' };
local is_godot_project = false;
local godot_project_path = '';
local server_pipe = '.server.pipe';
local cwd = vim.fn.getcwd();

for key, value in pairs(paths_to_check) do
	if vim.uv.fs_stat(cwd .. value .. 'project.godot') then
		is_godot_project = true;
		godot_project_path = cwd .. value;
	end
end

local is_server_running = vim.uv.fs_stat(godot_project_path .. server_pipe);

if is_godot_project and not is_server_running then
	vim.fn.serverstart(godot_project_path .. server_pipe);
end

