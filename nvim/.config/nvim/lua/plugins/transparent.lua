return {
    "xiyaowong/transparent.nvim",
    lazy = false,
    opts = {
        extra_groups = {
            "NeoTreeNormal",
            "NeoTreeNormalNC",
        },
    },
    config = function()
      require('transparent').setup()
    end
}
