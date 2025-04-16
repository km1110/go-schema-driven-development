.PHONY: oapigen
oapigen:
	cd openapi/tools && \
		docker compose run --rm oapi-codegen oapi-codegen -config /tools/config.yaml /generated/openapi.yaml