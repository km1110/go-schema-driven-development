ROOT_YAML=openapi/root.yaml
BUNDLE_YAML=openapi/generated/openapi.bundled.yaml

.PHONY: openapi-validate
openapi-validate:
	cd docker && \
		docker compose run --rm swagger-cli validate /workspace/$(ROOT_YAML)


.PHONY: openapi-bundle
openapi-bundle:
	cd docker && \
		docker compose run --rm swagger-cli bundle -t yaml -o /workspace/$(BUNDLE_YAML) /workspace/$(ROOT_YAML)


.PHONY: oapigen
oapigen: 
	cd docker && \
		docker compose run --rm oapi-codegen -config /workspace/docker/config.yaml /workspace/$(BUNDLE_YAML)