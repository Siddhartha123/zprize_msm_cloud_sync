-- Initializing Block RAM from external data file
-- File: rams_init_file.vhd
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE std.textio.ALL;
ENTITY rams_init_file IS
    PORT (
        clk : IN STD_LOGIC;
        we : IN STD_LOGIC;
        addr : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
END rams_init_file;
ARCHITECTURE syn OF rams_init_file IS
    TYPE RamType IS ARRAY (0 TO 63) OF bit_vector(31 DOWNTO 0);
    IMPURE FUNCTION InitRamFromFile(RamFileName : IN STRING) RETURN RamType IS
        FILE RamFile : text IS IN RamFileName;
        VARIABLE RamFileLine : line;
        VARIABLE RAM : RamType;
    BEGIN
        FOR I IN RamType'RANGE LOOP
            readline(RamFile, RamFileLine);
            read(RamFileLine, RAM(I));
        END LOOP;
        RETURN RAM;
    END FUNCTION;
    SIGNAL RAM : RamType := InitRamFromFile("rams_init_file.data");
BEGIN
    PROCESS (clk)
    BEGIN
        IF clk'event AND clk = '1' THEN
            IF we = '1' THEN
                RAM(to_integer(unsigned(addr))) <= to_bitvector(din);
            END IF;
            dout <= to_stdlogicvector(RAM(to_integer(unsigned(addr))));
        END IF;
    END PROCESS;
END syn;