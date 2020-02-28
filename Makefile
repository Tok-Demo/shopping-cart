fontend: install_dependency_fontend code_analys_fontend run_unittest_fontend build_fontend
backend: code_analys_backend run_unittest_backend build_backend

run_robot: 
	robot atdd/ui/shopping_cart_success.robot

run_newman: 
	newman run atdd/api/shopping_cart_success.json

install_dependency_fontend:
	cd store-web && npm install

code_analys_fontend:
	cd store-web && npm run lint

run_unittest_fontend:
	cd store-web && npm test

build_fontend:
	docker-compose build store-web

code_analys_backend:
	cd store-service && go vet ./...

run_unittest_backend:
	cd store-service && go test ./...

build_backend:
	docker-compose build store-service