PROTO_SRC_DIR=schemas
PROTO_GEN_DIR=gen


proto:
	@rm -R ${PROTO_GEN_DIR}
	@mkdir -p ${PROTO_GEN_DIR}
	@protoc \
		--proto_path=${PROTO_SRC_DIR} \
		--go_out=${PROTO_GEN_DIR} \
		--go-grpc_out=${PROTO_GEN_DIR} \
		--go_opt=paths=source_relative \
		--go-grpc_opt=paths=source_relative \
		$$(find ${PROTO_SRC_DIR} -name '*.proto')
