name: Python application

on:
  push:
    branches: [ main]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Set up Python
      uses: actions/setup-python@v2
      with:
        python-version: "3.8"
    - name: Display Python version
      run: python -c "import sys; print(sys.version)"
    - name: Build & push Docker image
      uses: mr-smithers-excellent/docker-build-push@v5
      with:
        image: pepsicoc@naver.com/github-actions-app
        tags: v3, latest
        registry: docker.io
        username: pepsicoc@naver.com
        password: dckr_pat_AgzHdQ42MZiqcFR3ntOH2kOufew
