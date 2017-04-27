DIR =bin

$(DIR):
	make -p $@

%: %.o 
	@mkdir -p $(DIR)
	$(LD) -o $(DIR)/$@ $< 

%.o: %.asm 
	yasm -g dwarf2 -f elf -o $@ $<

