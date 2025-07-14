# Summary of nginx Folder

## Command History Related to nginx
- **Commands Executed:**
  - Created an `nginx` directory.
  - Installed nginx using Homebrew (`brew install nginx`).
  - Entered the `nginx` directory.
  - Various attempts to start, test, and reload nginx.

## Folder Structure and Content

- **HTML Files:**
  - `index.html`: A basic HTML file indicating content is served from `nginx/index.html`.
  - `fruit/index.html`: Lists types of fruit like mango, orange, and apple.
  - `veg/veg.html`: Lists items like leaf, branch, and apple.

- **Server Directory:**
  - Contains a simple Express.js server setup.
  - **Key Files:**
    - `index.js`: Sets up an Express server on port 7777.
    - `package.json`: Contains Node.js package metadata and dependencies.
    - `Dockerfile`: Docker configuration for the Node.js server.

- **Nginx Configuration (nginx.conf):**
  - Sets up an upstream block with multiple servers.
  - Configures a server listening on port 8080 with multiple location blocks.
  - Implements a rewrite for `/number/` paths.
  - Uses `proxy_pass` to forward requests to a backend.
  - Specifies various `location` blocks for different paths like `/fruit`, `/carb`, `/veg`, and `/crops`.
