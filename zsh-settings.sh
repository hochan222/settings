# git log --oneline --graph --all
#
# < options >
# --oneline
# -graph: show branch
# -all: show remote branch
#


# Download oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Download powerlevel10k (oh my zsh .ver)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# vim ~/.zshrc
sed -e s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"powerlevel10k/powerlevel10k\"/g ~/.zshrc > temp.sh && cat temp.sh > ~/.zshrc && rm -rf temp.sh

