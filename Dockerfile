FROM woodpeckerci/plugin-kaniko:1.0.0

RUN rm /kaniko/plugin.sh
RUN wget https://raw.githubusercontent.com/nicolas-r/plugin-kaniko/some-fixes/plugin.sh -O /kaniko/plugin.sh
RUN chmod +x /kaniko/plugin.sh
ENTRYPOINT [ "/kaniko/plugin.sh" ]