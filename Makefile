.PHONY: コンテナ一覧
ps:
	docker compose ps -a

.PHONY: コンテナ立ち上げ
init:
	@make down
	docker compose build --no-cache
	docker compose up -d

.PHONY: コンテナ終了
down:
	docker compose down --rmi all --volumes --remove-orphans

.PHONY: モジュールインストール
package-install:
	docker compose exec -it app npm ci

.PHONY: アタッチ
attach:
	docker compose exec -it app bash
