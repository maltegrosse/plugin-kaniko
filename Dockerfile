FROM woodpeckerci/plugin-kaniko:1.0.0
RUN rm /kaniko/plugin.sh
RUN curl https://raw.githubusercontent.com/nicolas-r/plugin-kaniko/some-fixes/plugin.sh > /kaniko/plugin.sh
ENTRYPOINT [ "/kaniko/plugin.sh" ]