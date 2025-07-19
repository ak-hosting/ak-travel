# AK Travel - Dockerfile
# Nginx tabanlı web sunucusu

FROM nginx:alpine

# Nginx konfigürasyonunu kopyala
COPY nginx.conf /etc/nginx/nginx.conf

# Proje dosyalarını kopyala
COPY . /usr/share/nginx/html/

# Port 80'i expose et
EXPOSE 80

# Nginx'i başlat
CMD ["nginx", "-g", "daemon off;"] 