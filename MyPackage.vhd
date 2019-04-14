library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage is

Component DEC32 is
    Port ( sel : in  STD_LOGIC_VECTOR (4 downto 0);
           o : out  STD_LOGIC_VECTOR (31 downto 0));
end Component;

Component REG is
Generic(n:NATURAL :=4);
PORT(
I:IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
CLK,LD,INC,CLR :IN STD_LOGIC;
O:OUT STD_LOGIC_VECTOR(n-1 downto 0) );
END Component;
Component MUX32 is
    Port ( sel : in  STD_LOGIC_VECTOR (4 downto 0);
           r0 : in  STD_LOGIC_VECTOR (31 downto 0);
           r1 : in  STD_LOGIC_VECTOR (31 downto 0);
           r2 : in  STD_LOGIC_VECTOR (31 downto 0);
           r3 : in  STD_LOGIC_VECTOR (31 downto 0);
           r4 : in  STD_LOGIC_VECTOR (31 downto 0);
           r5 : in  STD_LOGIC_VECTOR (31 downto 0);
           r6 : in  STD_LOGIC_VECTOR (31 downto 0);
           r7 : in  STD_LOGIC_VECTOR (31 downto 0);
           r8 : in  STD_LOGIC_VECTOR (31 downto 0);
           r9 : in  STD_LOGIC_VECTOR (31 downto 0);
           r10 : in  STD_LOGIC_VECTOR (31 downto 0);
           r11 : in  STD_LOGIC_VECTOR (31 downto 0);
           r12 : in  STD_LOGIC_VECTOR (31 downto 0);
           r13 : in  STD_LOGIC_VECTOR (31 downto 0);
           r14 : in  STD_LOGIC_VECTOR (31 downto 0);
           r15 : in  STD_LOGIC_VECTOR (31 downto 0);
           r16 : in  STD_LOGIC_VECTOR (31 downto 0);
           r17 : in  STD_LOGIC_VECTOR (31 downto 0);
           r18 : in  STD_LOGIC_VECTOR (31 downto 0);
           r19 : in  STD_LOGIC_VECTOR (31 downto 0);
           r20 : in  STD_LOGIC_VECTOR (31 downto 0);
           r21 : in  STD_LOGIC_VECTOR (31 downto 0);
           r22 : in  STD_LOGIC_VECTOR (31 downto 0);
           r23 : in  STD_LOGIC_VECTOR (31 downto 0);
           r24 : in  STD_LOGIC_VECTOR (31 downto 0);
           r25 : in  STD_LOGIC_VECTOR (31 downto 0);
           r26 : in  STD_LOGIC_VECTOR (31 downto 0);
           r27 : in  STD_LOGIC_VECTOR (31 downto 0);
           r28 : in  STD_LOGIC_VECTOR (31 downto 0);
           r29 : in  STD_LOGIC_VECTOR (31 downto 0);
           r30 : in  STD_LOGIC_VECTOR (31 downto 0);
           r31 : in  STD_LOGIC_VECTOR (31 downto 0);
			  o	: out	STD_LOGIC_VECTOR (31 downto 0));
end Component;
end MyPackage;

package body MyPackage is

end MyPackage;
