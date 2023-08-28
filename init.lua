local opt = vim.opt

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.swapfile = false
opt.shiftround = true

vim.cmd "au BufNewFile,BufReadPost   *.shader,*.frag,*.vert,*.fp,*.vp,*.glsl   setf glsl"
