

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux2x3 is
  Port ( 
        a, b : in std_logic_vector(2 downto 0);
        sel : in std_logic;
        y : out std_logic_vector(2 downto 0)
  );
end mux2x3;

architecture mux2x3 of mux2x3 is
    component mux2x1 is
        port(a, b, sel : in std_logic; y : out std_logic);
    end component;
begin
    generate_mux2x3: for i in 0 to 2 generate
        compnent: mux2x1 port map(a(i),b(i),sel,y(i));
    end generate;

end mux2x3;
