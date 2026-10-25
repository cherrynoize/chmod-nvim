vim.api.nvim_create_user_command("Chmod", function(opts)
  require("chmod").run(opts.args)
end, {
  nargs = 1,
  desc = "chmod the current file",
  complete = function()
    return { "+x", "-x", "x", "644", "755", "u+x", "a+x" }
  end,
})
