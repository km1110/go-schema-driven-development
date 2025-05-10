.PHONY: openapi-validate
openapi-validate:
	cd openapi/tools && \
		docker compose run --rm swagger-cli validate /components/root.yaml


.PHONY: openapi-bundle
openapi-bundle:
	cd openapi/tools && \
		docker compose run --rm swagger-cli bundle -t yaml -o /generated/openapi.bundled.yaml /components/root.yaml

.PHONY: oapigen
oapigen:
	cd openapi/tools && \
		docker compose run --rm oapi-codegen oapi-codegen -config /tools/config.yaml /generated/openapi.bundled.yaml


