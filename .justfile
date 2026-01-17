# Set shell to zsh
set shell := ["zsh", "-lc"]
set dotenv-load
set export

# Default command
default:
  just --list

# Variables
git_repos := "/Users/shutchens/Documents/Git-Repos"
cgds_repos := git_repos + "/cgds"
pah_repos := git_repos + "/pah-repos"
personal_repos := git_repos + "/personal-repos"
website_repos := git_repos + "/website-repos"

# Serve Jekyll site
serve-jekyll:
    bundle exec jekyll serve

# Reload shell configuration
reload:
    exec zsh -i

# Clean up common temp files
clean-temp:
    find . -type f -name "*.pyc" -delete
    find . -type d -name "__pycache__" -delete
    find . -type d -name ".pytest_cache" -exec rm -rf {} +
    find . -type f -name ".DS_Store" -delete

# Fetch all remotes
[no-cd]
fetch:
    git fetch --all
    
# Create virtual environment
pyvenv NAME="venv":
    python3 -m venv {{NAME}}
    @echo "Run: source {{NAME}}/bin/activate"

# Activate virtual environment
activate-pyvenv NAME="venv":
    source {{NAME}}/bin/activate

# Build Python package
build-py:
    python3 -m build

# Full build and upload to TestPyPI
publish-test-pypi:
    python3 -m build
    python3 -m twine upload --repository testpypi dist/*

# Full build and upload to PyPI
publish-pypi:
    python3 -m build
    twine upload dist/*

# Run Streamlit app
run-streamlit APP="app.py":
    streamlit run {{APP}}

# Navigate to CGDS projects
cgds-repos:
    cd {{cgds_repos}} && exec zsh -i

# Navigate to PAH projects  
pah-repos:
    cd {{pah_repos}} && exec zsh -i

# Navigate to personal repos
personal-repos:
    cd {{personal_repos}} && exec zsh -i

# Navigate to personal repos
website-repos:
    cd {{website_repos}} && exec zsh -i

# Update Conda and all packages in base environment
update-conda-all:
    conda update -n base --all

# Update Homebrew and all packages
update-brew:
    brew update
    brew upgrade
    brew cleanup

# Update Mamba
update-mamba:
    conda update -n base mamba

# System health check
doctor:
    @echo "== Toolchain versions =="
    python --version
    git --version
    conda --version
    mamba --version
    node --version || true
    ruby --version || true

    @echo "\n== Binary resolution =="
    which python
    which pip
    which conda
    which mamba
    which git

# Check for outdated git repositories
[no-cd]
git-outdated:
    git-status-checker --show-outdated-only || true
