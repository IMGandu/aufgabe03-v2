# Basis-Image
FROM node:14

# Arbeitsverzeichnis
WORKDIR /usr/src/app

# Kopieren von package.json und package-lock.json
COPY package*.json ./

# Installieren der Abhängigkeiten
RUN npm ci

# Kopieren der Quelldateien
COPY . .

# Anwendung erstellen
RUN npm run build

# Expose Port
EXPOSE 3000

# Startkommando
CMD ["npm", "run", "start"]
