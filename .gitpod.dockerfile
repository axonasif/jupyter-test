# https://github.com/gitpod-io/workspace-images/issues/1071
FROM axonasif/workspace-python:debug2

# Install deps to speed up the workspace startup
COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

# Setup Heroku CLI
RUN curl https://cli-assets.heroku.com/install.sh | sh
