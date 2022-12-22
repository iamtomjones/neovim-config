vim.g.lightline = {
    colorscheme = "Tomorrow_Night_Blue",
    active = {
        left = {
            {"mode", "paste"},
            {"gitbranch","filename","modified"}
        }
    },
    component_function = {
        gitbranch = "FugitiveHead"
    }
}
