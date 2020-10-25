# [Doom Emacs](https://github.com/hlissner/doom-emacs)

## Installation
- Fetch from Github
``` shell
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
```

- Add doom to your command line in `~/.zshrc`
``` shell
export PATH=$PATH:~/.emacs.d/bin
```

- Common commands

``` shell
doom sync
doom upgrade
doom doctor
doom env
doom build
```

## Document
- [Doom Emacs Little Guide](https://www.ianjones.us/doom-emacs)
- [What is (Doom) Emacs?](https://zacjones.io/what-is-emacs)
- [Emacs Doom](https://zaiste.net/courses/emacs-doom/)
- [Scala Support in Doom Emacs with metals-emacs](https://siawyoung.com/blog/code/2020-02-06-installing-metals-emacs-doom)
- [Migrating from Emacs to Doom](https://irreal.org/blog/?p=8744)
- [Literate doom-emacs config](https://rgoswami.me/dotdoom/config.html)
- [Switching to Doom Emacs](https://www.ethanaa.com/blog/switching-to-doom-emacs/#why-the-switch)

## Private Configuration
- [forrestchang/.doom.d](https://github.com/forrestchang/.doom.d/)
- [ztlevi/doom-config](https://github.com/ztlevi/doom-config)
- [haditim/.doom.d](https://github.com/haditim/.doom.d)

## Configuration
### Package management
It uses its own declarative package manager built on top of [straight.el](https://github.com/raxod502/straight.el).

### Themes
If we want to use [Dracula theme](https://draculatheme.com/doom-emacs/) in *Doom Emacs*:
1. Open your `.doom.d/config.el`;
2. Add the following lines after the comments:
``` shell
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula) ;; << This line enables the theme
```
3. Activating theme:
   - Press `M-x` and select `doom/reload` to apply the changes;
   - If changes doesn't apply, close and re-open the Emacs.
