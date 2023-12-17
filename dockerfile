# this is for reflex engine as a server
FROM archlinux:latest

WORKDIR /app

COPY webui /app/

# Transaction #3, #4 & #5
RUN pacman -Syyu  --noconfirm && \
    pacman -S base-devel nodejs python3 python-pip --noconfirm && \
    pacman -Scc --noconfirm

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 54000