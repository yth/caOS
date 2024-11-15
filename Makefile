qemu: bin
	qemu-system-x86_64 -drive format=raw,file=target/target/debug/bootimage-caOs.bin

clean:
	cargo clean

bin:
	cargo bootimage