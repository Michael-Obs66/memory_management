AS=arm-none-eabi-as
LD=arm-none-eabi-ld
OBJCOPY=arm-none-eabi-objcopy
TARGET=sensor_aggregation

all: $(TARGET).bin

$(TARGET).o: src/$(TARGET).s
	$(AS) $< -o $@

$(TARGET).elf: $(TARGET).o include/linker_script.ld
	$(LD) $< -T include/linker_script.ld -o $@

$(TARGET).bin: $(TARGET).elf
	$(OBJCOPY) -O binary $< $@

clean:
	rm -f *.o *.elf *.bin
