library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MyPackage.all;
entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is
signal REGW,DECO : std_logic_vector(31 downto 0);
signal reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9,
		 reg10,reg11,reg12,reg13,reg14,reg15,reg16,reg17,reg18,reg19,
		 reg20,reg21,reg22,reg23,reg24,reg25,reg26,reg27,reg28,reg29,
		 reg30,reg31,d1,d2:STD_LOGIC_VECTOR (31 downto 0);

begin

r0:REG generic map(32) port map(write_data,clk,REGW(0),'0','0',reg0);
r1:REG generic map(32) port map(write_data,clk,REGW(1),'0','0',reg1);
r2:REG generic map(32) port map(write_data,clk,REGW(2),'0','0',reg2);
r3:REG generic map(32) port map(write_data,clk,REGW(3),'0','0',reg3);
r4:REG generic map(32) port map(write_data,clk,REGW(4),'0','0',reg4);
r5:REG generic map(32) port map(write_data,clk,REGW(5),'0','0',reg5);
r6:REG generic map(32) port map(write_data,clk,REGW(6),'0','0',reg6);
r7:REG generic map(32) port map(write_data,clk,REGW(7),'0','0',reg7);
r8:REG generic map(32) port map(write_data,clk,REGW(8),'0','0',reg8);
r9:REG generic map(32) port map(write_data,clk,REGW(9),'0','0',reg9);
r10:REG generic map(32) port map(write_data,clk,REGW(10),'0','0',reg10);
r11:REG generic map(32) port map(write_data,clk,REGW(11),'0','0',reg11);
r12:REG generic map(32) port map(write_data,clk,REGW(12),'0','0',reg12);
r13:REG generic map(32) port map(write_data,clk,REGW(13),'0','0',reg13);
r14:REG generic map(32) port map(write_data,clk,REGW(14),'0','0',reg14);
r15:REG generic map(32) port map(write_data,clk,REGW(15),'0','0',reg15);
r16:REG generic map(32) port map(write_data,clk,REGW(16),'0','0',reg16);
r17:REG generic map(32) port map(write_data,clk,REGW(17),'0','0',reg17);
r18:REG generic map(32) port map(write_data,clk,REGW(18),'0','0',reg18);
r19:REG generic map(32) port map(write_data,clk,REGW(19),'0','0',reg19);
r20:REG generic map(32) port map(write_data,clk,REGW(20),'0','0',reg20);
r21:REG generic map(32) port map(write_data,clk,REGW(21),'0','0',reg21);
r22:REG generic map(32) port map(write_data,clk,REGW(22),'0','0',reg22);
r23:REG generic map(32) port map(write_data,clk,REGW(23),'0','0',reg23);
r24:REG generic map(32) port map(write_data,clk,REGW(24),'0','0',reg24);
r25:REG generic map(32) port map(write_data,clk,REGW(25),'0','0',reg25);
r26:REG generic map(32) port map(write_data,clk,REGW(26),'0','0',reg26);
r27:REG generic map(32) port map(write_data,clk,REGW(27),'0','0',reg27);
r28:REG generic map(32) port map(write_data,clk,REGW(28),'0','0',reg28);
r29:REG generic map(32) port map(write_data,clk,REGW(29),'0','0',reg29);
r30:REG generic map(32) port map(write_data,clk,REGW(30),'0','0',reg30);
r31:REG generic map(32) port map(write_data,clk,REGW(31),'0','0',reg31);

MUX1: MUX32 port map
(read_sel1,reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9,
reg10,reg11,reg12,reg13,reg14,reg15,reg16,reg17,reg18,reg19,
reg20,reg21,reg22,reg23,reg24,reg25,reg26,reg27,reg28,reg29,reg30,reg31,data1);

MUX2: MUX32 port map
(read_sel2,
reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9,
reg10,reg11,reg12,reg13,reg14,reg15,reg16,reg17,reg18,reg19,
reg20,reg21,reg22,reg23,reg24,reg25,reg26,reg27,reg28,reg29,reg30,reg31,data2);

DEC: DEC32 port map(write_sel,DECO);

process
begin
for I in 0 to 31 loop
REGW(I)<=DECO(I) and write_ena;
end loop;
end process;

end Behavioral;

