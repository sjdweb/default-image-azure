FROM atlassian/default-image:latest
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | \
      tee /etc/apt/sources.list.d/azure-cli.list
RUN apt-key adv --keyserver packages.microsoft.com --recv-keys 417A0893
RUN apt-get install -y apt-transport-https
RUN apt-get update && apt-get install -y gettext azure-cli
