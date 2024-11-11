# Use a imagem oficial do NGINX
FROM nginx:alpine

# Remova qualquer configuração default do NGINX
RUN rm -rf /usr/share/nginx/html/*

# Copie o index.html para o diretório do NGINX
COPY index.html /usr/share/nginx/html

# Exponha a porta 80
EXPOSE 80

# Inicie o NGINX
CMD ["nginx", "-g", "daemon off;"]
