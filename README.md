# neovim plugin template
because i always forget the how lua modules work

## directory structure explained
```
└── nvim_plugin_template
    ├── README.md
    ├── lua
    │   └── your_require_name_here
    │       └── init.lua
    └── plugin
        └── do_this_on_load.lua
```

`your_require_name_here` is the name that users will give to the `require()`
function. The main script inside of there must be called `init.lua`.

Any lua files within the `plugin` directory will be run as soon as neovim starts.
They can be named whatever you want.

## using the plugin locally vs from github

You want to be able to rapidly test your plugin without needing to push every
little change to github.

Add this to your Lazy.nvim setup (assuming your local copy is stored in your home directory):
```lua
{ dir = '~/my_local_plugin' },
```

Once you have a functioning plugin repo on github, importing it is as simple as
specifying your github username and the repository's name.
It is conventional for the github repository to be named with ".nvim" at the
end, but this is not required.

Add this to your Lazy.nvim setup:
```lua
{ 'github_username/repository_name' },
```

You can then check that your plugin has been loaded by running these commands:
```vimscript
:redir >whats_loaded.txt
:lua vim.print(package.loaded)
:redir END
```
...then opening up the newly created `whats_loaded.txt` file and searching for
your plugin's name.

(pro tip: `vim.print` is super useful for pretty printing lua tables)
