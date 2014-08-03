dotfiles
========

My configuration files for linux


**JS: use JSHint to lint JS. All we have to do is install globally with NPM and syntastic will do the rest.**
```
sudo apt-get install nodejs nodejs-dev npm
sudo npm install -g jshint
```
ADDITIONAL INSTALLATION STEPS:
**Jedi-Vim**
Install pip: http://pip.readthedocs.org/en/latest/installing.html
Update Jedi: `sudo pip install jedi`

**Valloric/YouCompleteMe:**

https://github.com/Valloric/YouCompleteMe 
`make ycm_support_libs` gives error `c++: internal compiler error: Killed (program cc1plus)`
Cause: DigitalOcean droplet insufficient RAM. Need to add swap file big enough (512MB) and swapon this file. 
https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-12-04


**Tern:**

https://github.com/marijnh/tern_for_vim
```
cd ~/.vim/bundle/tern_for_vim/
npm install
```
