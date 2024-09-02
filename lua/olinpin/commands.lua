function InsertDebugPrint()
    local ft = vim.bo.filetype
    local filename = vim.fn.expand("%:t")
    local lineno = vim.fn.line(".")
    local current_line = vim.fn.getline(".")
    local indent = string.match(current_line, "^%s*")
    local print_statement = ""
    local cursor_pos = #print_statement

    if ft == "go" then
        print_statement = string.format('log.Printf("DEBUG: %s:%d - %%v", )', filename, lineno)
        cursor_pos = #print_statement - 1
    elseif ft == "python" then
        print_statement = string.format('print(f"DEBUG: %s:%d")', filename, lineno)
        cursor_pos = #print_statement + 2
    elseif ft == "php" then
        print_statement = string.format('dd("DEBUG: %s:%d ");', filename, lineno)
        cursor_pos = #print_statement - 1
    elseif ft == "javascript" or ft == "typescript" then
        print_statement = string.format('console.log("DEBUG: %s:%d: ", );', filename, lineno)
        cursor_pos = #print_statement - 1
    else
        return
    end

    -- Insert the statement with the same indentation
    print_statement = indent .. print_statement
    vim.api.nvim_put({ print_statement }, 'l', true, true)

    -- Move the cursor to the right position & go into insert mode
    local cursor_line = vim.fn.line(".")
    vim.fn.cursor(cursor_line, cursor_pos)
    -- vim.api.nvim_command('startinsert')
end

vim.api.nvim_set_keymap('n', '<Leader>ic', ':lua InsertDebugPrint()<CR>', { noremap = true, silent = true })


