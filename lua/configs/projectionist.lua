vim.g.projectionist_heuristics = {
  ["*"] = {
    ["*.c"] = {
      alternate = "{}.h"
    },
    ["*.h"] = {
      alternate = "{}.c"
    },
    ["*.cpp"] = {
      alternate = "{}.hpp"
    },
    ["*.hpp"] = {
      alternate = "{}.cpp"
    },
  }
}
