local iron = require("iron")

iron.core.set_config {
  preferred = {
    python = "ipython"
  },
  -- open to the right rather than the default left
  repl_open_cmd = "rightbelow vertical split",
}
