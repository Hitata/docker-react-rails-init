FROM node:6.10.3

#Create user app.
RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/app

# COPY package.json npm-shrinkwrap.json $HOME/client/
# RUN chown -R app:app $HOME/*

USER app 
WORKDIR $HOME/client

# RUN npm install

CMD ["node"]