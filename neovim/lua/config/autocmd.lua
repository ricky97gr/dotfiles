--**********************************************************
--* Author           : ricky97gr
--* Email            : ricky97gr@163.com
--* Github           : https://github.com/ricky97gr
--* Create Time      : 2023-06-08 13:11
--* FileName         : autocmd.lua
--* Description      :
--**********************************************************

vim.cmd([[

  augroup comment_config
	autocmd!
	autocmd BufNewFile *.yaml,*.sh,*.yml,Dockerfile* :call Set_Common_Info() | normal G 
    function Set_Common_Info()
	  call setline(1, '# **********************************************************')
	  call setline(2, '# * Author           : ricky97gr')
	  call setline(3, '# * Email            : ricky97gr@163.com')
	  call setline(4, '# * Github           : https://github.com/ricky97gr')
	  call setline(5, '# * Create Time      : '.strftime("%Y-%m-%d %H:%M"))
	  call setline(6, '# * FileName         : '.expand("%"))
	  call setline(7, '# * Description      : ')
	  call setline(8, '# **********************************************************')
	  call setline(9, '')
	  call setline(10, '')
    endfunc
  augroup end

  augroup fmt
	autocmd!
	autocmd BufWritePre * undojoin | Neoformat
  augroup END

  augroup go_config
	autocmd!
	autocmd FileType go iabbrev  <buffer> Test func Test_(t *testing.T) { }
	autocmd FileType go iabbrev  <buffer> main func main(){ }
	autocmd BufNewFile *_test.go :call Start_Go_Test()
    function Start_Go_Test()
  		call setline(1, 'package '.expand("%:p:h:t"))
  		call setline(2, '')
  		call setline(3, 'import(')
  		call setline(4, '	"testing"')
  		call setline(5, ')')
  		call setline(6, '')
  		call setline(7, 'func Test_ (t *testing.T) { }')
  		call setline(8, '')
  	endfunc
  augroup END

  augroup rust_config
  	autocmd!
  augroup END

  augroup lua_config
	autocmd!
	autocmd BufNewFile *.lua :call Set_Lua_Info() | normal G 
    function Set_Lua_Info()
	  call setline(1, '-- **********************************************************')
	  call setline(2, '-- * Author           : ricky97gr')
	  call setline(3, '-- * Email            : ricky97gr@163.com')
	  call setline(4, '-- * Github           : https://github.com/ricky97gr')
	  call setline(5, '-- * Create Time      : '.strftime("%Y-%m-%d %H:%M"))
	  call setline(6, '-- * FileName         : '.expand("%"))
	  call setline(7, '-- * Description      : ')
	  call setline(8, '-- **********************************************************')
	  call setline(9, '')
	  call setline(10, '')
    endfunc
  augroup end

  augroup indent_config
    autocmd FileType lua setlocal et sta sw=2 sts=2
    autocmd FileType go setlocal et sta sw=4 sts=4
  augroup end
]])
