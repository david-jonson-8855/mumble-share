#!/bin/bash

# Обновляем списки пакетов
sudo apt update

# Устанавливаем Docker из стандартного репозитория Ubuntu
sudo apt install -y docker.io

# Добавляем Docker в автозагрузку и запускаем службу
sudo systemctl enable --now docker

# (Опционально) Позволяем текущему пользователю запускать Docker без sudo
sudo usermod -aG docker $USER

echo "Установка завершена. Чтобы использовать Docker без sudo, перезайдите в систему."
