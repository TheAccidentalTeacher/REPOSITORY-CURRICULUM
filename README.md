# REPOSITORY-CURRICULUM

A multi-project workspace containing VS Code extension samples and a curriculum web application.

## Projects

### 1. VS Code Extensions
- **Configuration Sample 1** (`./configuration-sample/`) - VS Code extension demonstrating configuration contributions
- **Configuration Sample 2** (`./configuration-sample-1/`) - Additional VS Code extension sample

### 2. Curriculum Repository
- **Teacher Guide PDF Library** (`./CURRICULUM REPOSITORY/`) - Web application for browsing educational modules

## Getting Started

### Prerequisites
- Node.js (v14 or later)
- npm
- Python 3 (for serving the curriculum website)

### Building the Workspace

#### Option 1: Build Everything at Once
Use the VS Code Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`) and run:
```
Tasks: Run Task > Build All Extensions
```

#### Option 2: Build Individual Projects

**For VS Code Extensions:**
1. Install dependencies:
   ```bash
   cd configuration-sample
   npm install
   
   cd ../configuration-sample-1
   npm install
   ```

2. Build the extensions:
   ```bash
   cd configuration-sample
   npm run compile
   
   cd ../configuration-sample-1
   npm run compile
   ```

**For Curriculum Website:**
No build step required - it's a static HTML/CSS/JS application.

### Running the Projects

#### VS Code Extensions
1. Open the workspace in VS Code
2. Press `F5` or use the Debug view to run either:
   - "Run Extension (Config Sample 1)"
   - "Run Extension (Config Sample 2)"

#### Curriculum Website
1. Use the VS Code task: `Tasks: Run Task > Serve Curriculum Website`
2. Or manually run: 
   ```bash
   cd "CURRICULUM REPOSITORY"
   python3 -m http.server 8000
   ```
3. Open http://localhost:8000 in your browser

### Development Workflow

#### VS Code Extensions
- Use `Tasks: Run Task > Watch Config Sample 1/2` for automatic compilation during development
- The workspace is configured with TypeScript and ESLint support
- Debug configurations are set up for testing extensions

#### Curriculum Website
- Edit HTML, CSS, and JavaScript files directly
- Refresh browser to see changes
- No build process required

### Available Tasks

Access these via `Ctrl+Shift+P` → `Tasks: Run Task`:

- **Install Dependencies - Config Sample 1/2** - Install npm packages
- **Build Config Sample 1/2** - Compile TypeScript
- **Watch Config Sample 1/2** - Watch mode for development
- **Serve Curriculum Website** - Start local web server
- **Build All Extensions** - Build both extension projects

### Recommended Extensions

The workspace recommends these VS Code extensions:
- TypeScript support
- ESLint
- Tailwind CSS IntelliSense
- Live Server

### Project Structure

```
.
├── .vscode/                    # Workspace configuration
│   ├── extensions.json
│   ├── launch.json
│   ├── settings.json
│   ├── tasks.json
│   └── workspace.code-workspace
├── configuration-sample/       # VS Code extension sample 1
├── configuration-sample-1/     # VS Code extension sample 2
├── CURRICULUM REPOSITORY/      # Web application
└── README.md                   # This file
```