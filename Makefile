current_dir := $(shell pwd)

go:
	rm -rf pb/go && mkdir -p pb/go
	protoc --go_opt=paths=source_relative --go_out=./pb/go --go-grpc_opt=paths=source_relative \
		--go-grpc_out=./pb/go --proto_path=$(current_dir)/src/ \
		$(current_dir)/src/*.proto
