-- Define the function to get the filetype symbol
function WebDevIconsGetFileTypeSymbol()
    return vim.fn.WebDevIconsGetSymbol('filetype', vim.bo.filetype)
end

-- Define the function to get the fileformat symbol
function WebDevIconsGetFileFormatSymbol()
    return vim.fn.WebDevIconsGetSymbol('fileformat', vim.bo.fileformat)
end

-- Define the Lightline active tabline
local function webdevicons_active_tabline()
    local tabline = {
        { ' ' },
        { 'mode', 'paste' },
        { ' ', 'readonly', 'filename', 'modified' },
        { ' ', 'gitbranch', 'diff', ' ' },
        { 'filetype', ' ', { 'filesize', 'fileformat' }, ' ' },
    }
    return tabline
end

vim.g.lightline = {
    colorscheme = "material",
    active = {
        left = {
            { "mode", "paste" },
            { "gitbranch", "filename", "diff", "modified" }
        }
    },
    component_function = {
        gitbranch = "FugitiveHead",
        fileformat = 'WebDevIconsGetFileFormatSymbol',
    }
}
