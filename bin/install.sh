cd "$(dirname "$0")"
mkdir -p ~/.local/bin 
ls -I "install.sh" | xargs -I {} cp {} ~/.local/bin -v
