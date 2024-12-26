install:
	npm install
	composer install
	cp .env.example .env
	php artisan key:generate
	touch ${PWD}/database/sae_s5.sqlite
	php artisan migrate

	# docker compose build
	# docker compose up -d
	# sleep 3
	# docker compose exec web sh -c "php artisan migrate"
up:
	(npm run dev&)
	php artisan serve
	
down:
	docker compose down
