⚠️ 1. Остановить все контейнеры
docker stop $(docker ps -aq)

🗑️ 2. Удалить все контейнеры
docker rm $(docker ps -aq)

🗑️ 3. Удалить все images
docker rmi $(docker images -q)

🗑️ 4. Удалить все volumes
docker volume rm $(docker volume ls -q)

🗑️ 5. Удалить все networks
docker network rm $(docker network ls -q)

🔥 6. Самый мощный способ (одна команда)

Удалит ВСЁ:

docker system prune -a --volumes -f


workspace/
│
├── infra/                        # глобальная инфраструктура
│   ├── compose.yml
│   └── .env
│
├── apps/                        # все проекты
│   ├── app1/
│   │   ├── compose.yml
│   │   ├── src/
│   │   └── .env
│   │
│   └── app2/
│       ├── compose.yml
│       └── src/
│
├── storage/
│   ├── mysql/
│   ├── postgres/
│   └── redis/
│
├── backup/
│
├── scripts/
│   └── backup.sh
│
└── README.md
