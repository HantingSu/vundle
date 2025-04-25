# vundle

## 前製作業

### 需要打以下指令
1.  安裝vim-plug 
``` shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
2. 在~/.vim/bundle/Vindle.vim中新增vundle的目錄
``` shell
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
3. 使用vim command line執行以下指令
這行指令是為了要將我寫在vimrc中的套件都下載下來，看到下面顯示"Done"就是可以了！   
```
:PlugInstall
````
4. 安裝主題
因為我使用的是vim-monokai-test的主題，這需要下載，所以需要打以下指令，這個在56行，如果要改的話就改這裡
``` shell
git clone https://github.com/patstockwell/vim-monokai-tasty ~/.vim/pack/colors/start/vim-monokai-tasty
```
