qemu: bin
	qemu-system-x86_64 -drive format=raw,file=target/target/debug/bootimage-caOs.bin

clean:
	cargo clean

bin: fmt
	cargo bootimage

fmt:
	cargo fmt

prereqs:
	rustup toolchain install nightly
	rustup default nightly
	rustup component add llvm-tools-preview