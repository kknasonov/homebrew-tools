# Native rs-wgobfs binary for macOS on Apple Silicon.

Homebrew Tap for installing [rs-wgobfs](https://github.com/infinet/rs-wgobfs), a cross-platform WireGuard obfuscator written in Rust. It is fully compatible with [xt_wgobfs](https://github.com/infinet/xt_wgobfs).

## 🚀 Install
1. **Tap the repository:**
   `brew tap kknasonov/tools`

2. **Install rs-wgobfs:**
   `brew install rs-wgobfs`

3. **Configure the service (change Key, IP, and Ports):**
   `cd /opt/homebrew/Cellar/rs-wgobfs/0.6.1`
   `vi homebrew.mxcl.rs-wgobfs.plist`

5. **Start the service (enables autostart):**<
   `brew services start rs-wgobfs`
   *(This copies the configured file to ~/Library/LaunchAgents/homebrew.mxcl.rs-wgobfs.plist)*

6. **Verify running services:**
   `brew services list`
   or
   `ps -ef | grep rs-wgobfs`

---

## 🗑 Uninstall
1. **Stop the service and remove from autostart:**
   `brew services stop rs-wgobfs`

2. **Remove the program from /opt/homebrew:**
   `brew uninstall rs-wgobfs`

3. **Untap the repository:**
   `brew untap kknasonov/tools`
