[![Typing SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=Kafka+Cluster+из+5+брокеров)](https://git.io/typing-svg)


*Авторизация между брокерами и Zookeeper по SSL
*Авторизация между брокерами SASL_Plaintext
*Присутствует UI Conductor
*Есть Jikkou для удобного наката конфигурации



Инструкция по запуску:
1. Выполните команду: docker-compose up --build
2. Дождитесь завершения выполнения create_scram_users
3. Остановите все 5 брокеров (можно сразу их остановить)
4. Дождитесь, когда Zookeeper очистит их ID
5. Запустите брокеры, всё должно работать

*UI доступен по ссылке http://localhost:8080/

6. Если необходимо создать пользователя для нового брокера, выполните команду:
kafka-configs --zookeeper zookeeper:2182 -zk-tls-config-file /etc/zookeeper/zookeeper-client.properties --entity-type users --entity-name admin --alter --add-config 'SCRAM-SHA-256=[iterations=8192,password=admin-secret]'
7. Для использования Jikkou используйте команду:

docker run -v ${PWD}/topics/prod/topic.yaml:/app/topic.yaml --network kafka-network --rm --entrypoint /app/jikkou jikkou --files /app/topic.yaml
Где:
-v ${PWD}/topics/prod/topic.yaml:/app/topic.yaml монтируется файл для отправки конфигурации
--network kafka-network запускает контейнер в сети kafka-network
--rm удаляет контейнер сразу после выполнения команды
--entrypoint /app/jikkou вызывает Jikkou
--files /app/topic.yaml передает аргумент
Через Jikkou можно массово накатить ACL, Topics, Quotas.

Развлекайтесь!
