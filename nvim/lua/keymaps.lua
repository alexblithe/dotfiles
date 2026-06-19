vim.keymap.set('n', "<leader>ff", ":Pick files <CR>", { silent = true, desc = 'Open file picker' })
vim.keymap.set('n', '<leader>fg', ':Pick grep_live <CR>', { silent = true, desc = "Perform live grep" })
--- Format
vim.keymap.set('n', '<leader>lf', ':lua vim.lsp.buf.format() <CR>', { silent = true, desc = 'Format buffer' })

-- Go to
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { silent = true, desc = 'Go to definition' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { silent = true, desc = 'Go to declaration' })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { silent = true, desc = 'Go to implementation' })
vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { silent = true, desc = 'Go to type definition' })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { silent = true, desc = 'Find references' })

-- Info / docs
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { silent = true, desc = 'Show hover documentation' })
vim.keymap.set('n', '<C-Space>', vim.lsp.buf.signature_help, { silent = true, desc = 'Show signature help' })
vim.keymap.set('i', '<C-Space>', vim.lsp.buf.signature_help, { silent = true, desc = 'Show signature help' })

-- Actions
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, { silent = true, desc = 'Code action' })
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, { silent = true, desc = 'Rename symbol' })
vim.keymap.set('i', '<Tab>', function()
	-- If the completion menu is visible, select the next item. Otherwise, insert a tab character.
	if vim.fn.pumvisible() == 1 then
		return '<C-n>'
	end
	return '<Tab>'
end, { expr = true, desc = 'Completion menu next / insert tab' })

-- Splits and tabs
vim.keymap.set('n', '<leader>tn', ':enew <CR>', { silent = true, desc = 'New buffer' })

vim.keymap.set('n', '<M-j>', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<M-k>', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<C-w>', function() MiniBufremove.delete(nil, true) end, { desc = 'Close buffer' })
vim.keymap.set('n', 'g1', function() vim.cmd("b1") end, { desc = 'Go to buffer 1' })
vim.keymap.set('n', 'g2', function() vim.cmd("b2") end, { desc = 'Go to buffer 2' })
vim.keymap.set('n', 'g3', function() vim.cmd("b3") end, { desc = 'Go to buffer 3' })
vim.keymap.set('n', 'g4', function() vim.cmd("b4") end, { desc = 'Go to buffer 4' })
vim.keymap.set('n', 'g5', function() vim.cmd("b5") end, { desc = 'Go to buffer 5' })
vim.keymap.set('n', 'g6', function() vim.cmd("b6") end, { desc = 'Go to buffer 6' })
vim.keymap.set('n', 'g7', function() vim.cmd("b7") end, { desc = 'Go to buffer 7' })
vim.keymap.set('n', 'g8', function() vim.cmd("b8") end, { desc = 'Go to buffer 8' })
vim.keymap.set('n', 'g9', function() vim.cmd("b9") end, { desc = 'Go to buffer 9' })

--- Terminal
vim.keymap.set('n', '<leader>th', ':15split | terminal<CR>', { silent = true, desc = 'Open terminal' })
vim.keymap.set('t', '<Esc>', "<C-\\><C-n><C-w>h", { silent = true, desc = 'Exit terminal mode' })

-- Movement
vim.keymap.set({ 'n', 't' }, '<C-h>', '<C-w>h', { desc = 'Window left' })
vim.keymap.set({ 'n', 't' }, '<C-j>', '<C-w>j', { desc = 'Window down' })
vim.keymap.set({ 'n', 't' }, '<C-k>', '<C-w>k', { desc = 'Window up' })
vim.keymap.set({ 'n', 't' }, '<C-l>', '<C-w>l', { desc = 'Window right' })

local miniclue = require('mini.clue')
miniclue.setup({
	triggers = {
		{ mode = 'n', keys = '<Leader>' }
	},
	clues = {
		miniclue.gen_clues.square_brackets(),
		miniclue.gen_clues.builtin_completion(),
		miniclue.gen_clues.g(),
		miniclue.gen_clues.marks(),
		miniclue.gen_clues.registers(),
		miniclue.gen_clues.windows(),
		miniclue.gen_clues.z(),
	},
	window = {
		delay = 300
	}
})
