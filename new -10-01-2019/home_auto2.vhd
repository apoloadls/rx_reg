
-----------------------------------------------------------------------------------------------

		
	entity home_auto2 is port
	(
		lamp1 : out bit;
		lamp2 : out bit;
		lamp3 : out bit;
		lamp4 : out bit;
		
		ar1 : out bit := '0';
		ar2 : out bit := '0';
		ar3 : out bit := '0';
		
		d : in bit;
		clk : in bit;
		q : inout bit_vector(127 downto 0)
		
	);
	end home_auto2;
	
	architecture hardware of home_auto2 is
	signal q_signal : bit_vector( 127 downto 0);
	signal counter : integer := 128;
	
	signal control_1 : integer := 0;
   signal control_2 : integer := 1;
		
	begin

	
----------------------------
	rx_process : process
	begin
	
	wait until d'event and d='1' and control_1/=control_2;
		
		control_1<= control_1 + 1;
					
	end process rx_process;
----------------------------
	clk_process : process(clk)
	
	variable prd : integer := 5208;
	
	begin	
		
		if(clk'event and clk='1' and control_1=control_2) then
			prd := prd - 1;
			
			if(prd=0) then
				prd:=5208;
			end if;
			
			if(prd = 2604) then
				
			
					q_signal(127)<=d;
					q_signal(126)<=q_signal(127);
					q_signal(125)<=q_signal(126);
					q_signal(124)<=q_signal(125);
					q_signal(123)<=q_signal(124);
					q_signal(122)<=q_signal(123);
					q_signal(121)<=q_signal(122);
					q_signal(120)<=q_signal(121);
					q_signal(119)<=q_signal(120);
					q_signal(118)<=q_signal(119);
					q_signal(117)<=q_signal(118);
					q_signal(116)<=q_signal(117);
					q_signal(115)<=q_signal(116);
					q_signal(114)<=q_signal(115);
					q_signal(113)<=q_signal(114);
					q_signal(112)<=q_signal(113);
					q_signal(111)<=q_signal(112);
					q_signal(110)<=q_signal(111);
					q_signal(109)<=q_signal(110);
					q_signal(108)<=q_signal(109);
					q_signal(107)<=q_signal(108);
					q_signal(106)<=q_signal(107);
					q_signal(105)<=q_signal(106);
					q_signal(104)<=q_signal(105);
					q_signal(103)<=q_signal(104);
					q_signal(102)<=q_signal(103);
					q_signal(101)<=q_signal(102);
					q_signal(100)<=q_signal(101);
					q_signal(99)<=q_signal(100);
					q_signal(98)<=q_signal(99);
					q_signal(97)<=q_signal(98);
					q_signal(96)<=q_signal(97);
					q_signal(95)<=q_signal(96);
					q_signal(94)<=q_signal(95);
					q_signal(93)<=q_signal(94);
					q_signal(92)<=q_signal(93);
					q_signal(91)<=q_signal(92);
					q_signal(90)<=q_signal(91);
					q_signal(89)<=q_signal(90);
					q_signal(88)<=q_signal(89);
					q_signal(87)<=q_signal(88);
					q_signal(86)<=q_signal(87);
					q_signal(85)<=q_signal(86);
					q_signal(84)<=q_signal(85);
					q_signal(83)<=q_signal(84);
					q_signal(82)<=q_signal(83);
					q_signal(81)<=q_signal(82);
					q_signal(80)<=q_signal(81);
					q_signal(79)<=q_signal(80);
					q_signal(78)<=q_signal(79);
					q_signal(77)<=q_signal(78);
					q_signal(76)<=q_signal(77);
					q_signal(75)<=q_signal(76);
					q_signal(74)<=q_signal(75);
					q_signal(73)<=q_signal(74);
					q_signal(72)<=q_signal(73);
					q_signal(71)<=q_signal(72);
					q_signal(70)<=q_signal(71);
					q_signal(69)<=q_signal(70);
					q_signal(68)<=q_signal(69);
					q_signal(67)<=q_signal(68);
					q_signal(66)<=q_signal(67);
					q_signal(65)<=q_signal(66);
					q_signal(64)<=q_signal(65);
					q_signal(63)<=q_signal(64);
					q_signal(62)<=q_signal(63);
					q_signal(61)<=q_signal(62);
					q_signal(60)<=q_signal(61);
					q_signal(59)<=q_signal(60);
					q_signal(58)<=q_signal(59);
					q_signal(57)<=q_signal(58);
					q_signal(56)<=q_signal(57);
					q_signal(55)<=q_signal(56);
					q_signal(54)<=q_signal(55);
					q_signal(53)<=q_signal(54);
					q_signal(52)<=q_signal(53);
					q_signal(51)<=q_signal(52);
					q_signal(50)<=q_signal(51);
					q_signal(49)<=q_signal(50);
					q_signal(48)<=q_signal(49);
					q_signal(47)<=q_signal(48);
					q_signal(46)<=q_signal(47);
					q_signal(45)<=q_signal(46);
					q_signal(44)<=q_signal(45);
					q_signal(43)<=q_signal(44);
					q_signal(42)<=q_signal(43);
					q_signal(41)<=q_signal(42);
					q_signal(40)<=q_signal(41);
					q_signal(39)<=q_signal(40);
					q_signal(38)<=q_signal(39);
					q_signal(37)<=q_signal(38);
					q_signal(36)<=q_signal(37);
					q_signal(35)<=q_signal(36);
					q_signal(34)<=q_signal(35);
					q_signal(33)<=q_signal(34);
					q_signal(32)<=q_signal(33);
					q_signal(31)<=q_signal(32);
					q_signal(30)<=q_signal(31);
					q_signal(29)<=q_signal(30);
					q_signal(28)<=q_signal(29);
					q_signal(27)<=q_signal(28);
					q_signal(26)<=q_signal(27);
					q_signal(25)<=q_signal(26);
					q_signal(24)<=q_signal(25);
					q_signal(23)<=q_signal(24);
					q_signal(22)<=q_signal(23);
					q_signal(21)<=q_signal(22);
					q_signal(20)<=q_signal(21);
					q_signal(19)<=q_signal(20);
					q_signal(18)<=q_signal(19);
					q_signal(17)<=q_signal(18);
					q_signal(16)<=q_signal(17);
					q_signal(15)<=q_signal(16);
					q_signal(14)<=q_signal(15);
					q_signal(13)<=q_signal(14);
					q_signal(12)<=q_signal(13);
					q_signal(11)<=q_signal(12);
					q_signal(10)<=q_signal(11);
					q_signal(9)<=q_signal(10);
					q_signal(8)<=q_signal(9);
					q_signal(7)<=q_signal(8);
					q_signal(6)<=q_signal(7);
					q_signal(5)<=q_signal(6);
					q_signal(4)<=q_signal(5);
					q_signal(3)<=q_signal(4);
					q_signal(2)<=q_signal(3);
					q_signal(1)<=q_signal(2);
					q_signal(0)<=q_signal(1);
					
					
				counter <= counter -1;
			
				if(counter=0) then 
					control_2<= control_2 +1;
					counter<=128;
					
				end if;
			end if;
		end if;
				
	end process clk_process;
----------------------------
	q_process : process(counter)
	
	begin
	
			if(counter=0) then
			q <=  q_signal;
			
			
			end if;
					
	end process q_process;
----------------------------
	lamp_process : process(q)
	begin
		
		if(q="00000000000000000000000000000000000000001100111010110111111010001101101001101010100110111010010001101001101010100111001010011110")then
		 ----		1    -- espaço --   r    --    e   --    d   --    n   --    e   --    c   --    a  
 		lamp1<='1';
		end if;
		
		if(q="00000000000000000000000000000000000000000000000000110011101011011111101000110110100111101010011000101001111010100011111010011110")then
		            ---     1   -- espaço --   r    --    a   --    g   --    a   --    p   --    a   
		lamp1<='0';
		end if;
		
		if(q="00000000000000000000000000000000000000001100110110110111111010001101101001101010100110111010010001101001101010100111001010011110") then
		 ----		2    -- espaço --   r    --    e   --    d   --    n   --    e   --    c   --    a  
 		lamp2<='1';
		end if;
		
		if(q="00000000000000000000000000000000000000000000000000110011011011011111101000110110100111101010011000101001111010100011111010011110") then
		            ---     2   -- espaço --   r    --    a   --    g   --    a   --    p   --    a   
		lamp2<='0';
		end if;
		
	end process lamp_process;
	----------------------------
	
	
end hardware;