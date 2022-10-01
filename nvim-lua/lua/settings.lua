local g = vim.g
local opt = vim.opt
local cmd = vim.cmd
local path = vim.fn.expand('~/.config')

g.mapleader = ' ' -- Define a tecla `leader` como a espaço
g.ctrlsf_winsize = '30%'
opt.termguicolors = true -- Ativa o suporte para 256 cores
opt.signcolumn = 'yes' -- Adiciona coluna quando o conteúdo fica muito grande
opt.expandtab = true
opt.tabstop = 2 -- Número de espaços visuais ao pressionar a tecla TAB
opt.softtabstop = 2 -- Número de espaços contados em uma tabulação quando estiver editando
opt.shiftwidth = 2 -- Número de espaços contados em uma tabulação em nova linha
opt.cursorline = true -- Remove a marca da linha atual
opt.number = true -- Mostra os números das linhas
opt.relativenumber = true -- Mostra o números das linhas em relação a posição do cursor
opt.mouse = 'a' -- Ativa o mouse
opt.swapfile = false -- Desativa o swap
opt.hidden = true -- Permite editar outros arquivos sem salvar um antes de abrir outro
opt.inccommand = 'split' -- Permite ter uma pré-visualização antes de fazer uma substituição com :%s
opt.clipboard = 'unnamedplus' -- Permite copiar do clipboard para o vim e do vim para o clipboard
opt.hlsearch = true -- Destaca os resultados da busca
opt.ignorecase = true -- Ignora letras maiúsculas e minúsculas na busca
opt.smartcase = true -- Sobrescreve o `ignorecase` quando houver caracteres em maísuculo na busca
opt.lbr = true -- Adiciona quebra de linhas quando elas ficam grandes
opt.backup = true -- Ativa o backup
opt.undofile = true -- Salva automaticamente um histórico de ações para `desfazer` 
opt.writebackup = true -- Salva o arquivo no backup
opt.undodir = { path .. '/nvim/undos'} -- Define diretório para salvar histórico de `desfazer`
opt.backupdir = {path .. '/nvim/backups'} -- Define o diretório para os backups
opt.completeopt = { 'menuone', 'noselect' } -- adiciona um menu de autocomplete e não seleciona o item automaticamente
opt.virtualedit = 'all' --Não volta para o inicio da linha ao se movimentar
