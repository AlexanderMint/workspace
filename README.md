# Workspace

### Pull

```
make pull
```

### Up

```
make up
```

### Install psql cli

```bash
brew install libpq

echo 'export PATH="/usr/local/opt/libpq/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# or on M1 MacOS
echo 'export PATH="/opt/homebrew/opt/libpq/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```
