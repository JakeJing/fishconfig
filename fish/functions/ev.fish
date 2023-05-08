function ev --description 'edit nvim configuration and check the existence of Session.vim'
    pushd ~/.config/nvim/lua/yq
    if test -e Session.vim 
        nvim -S Session.vim maps.lua 
    else
        nvim maps.lua 
    end
end
