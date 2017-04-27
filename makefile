DIR = bin

%: $(DIR)/%.o 
	$(LD) -o $(DIR)/$@ $< 

$(DIR)/%.o: %.asm 
	@mkdir -p $(DIR)
	yasm -g dwarf2 -f elf -o $@ $<

