# vimpa.vim
view infomation of recent vim patches by a feed from vim-jp

```
------------------------------------------------------------------------------
7.4.2017  --  http://ftp.vim.org/vim/patches/7.4/7.4.2017
                                                2016-07-10T15:01:57.416659Z
Problem:    When there are many errors adding them to the quickfix list takes
            a long time.
Solution:   Add BLN_NOOPT.  Don't call buf_valid() in buf_copy_options().
            Remember the last file name used.  When going through the buffer
            list start from the end of the list.  Only call buf_valid() when
            autocommands were executed.

------------------------------------------------------------------------------
7.4.2016  --  http://ftp.vim.org/vim/patches/7.4/7.4.2016
                                                2016-07-10T12:01:53.536753Z
Problem:    Warning from MinGW about _WIN32_WINNT redefined. (John Marriott)
Solution:   First undefine it. (Ken Takata)

------------------------------------------------------------------------------
7.4.2015  --  http://ftp.vim.org/vim/patches/7.4/7.4.2015
                                                2016-07-09T21:41:25.510391Z
Problem:    When a file gets a name when writing it 'acd' is not effective.
            (Dan Church)
Solution:   Invoke DO_AUTOCHDIR after writing the file. (Allen Haim, closes
```

## Usage

```
:Vimpa
```

## Requirements

curl

## License

[NYSL](http://www.kmonos.net/nysl/index.en.html)


