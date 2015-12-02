--All Rights Reserved.
--
--*** This file is auto generated by IDesignSpec (http://www.agnisys.com) . Please do not edit this file. ***
-- XML Revision      : $Revision: 1.142 $
--
-----------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

--
--  processor hierarchy
--
--  processor
--

-- DESCRIPTION: 32-bit CPU microprocessor core, based on the SPARC-V8 RISC architecture and instruction set
--


entity processor is
    
    generic (
        
        local_memory_start_addr :  integer := ERROR101: startup failed:
        Script1.groovy: 1: expecting EOF, found '65536' @ line 1, column 51.
        ddr = (start_addr_local ) "/" 65536;loca
        ^
        
        1 error
        input = ($start_addr_local ) / 65536;        --EXAMPLE TO SHOW, HOW TO WRITE PARAMETERES.
        local_memory_addr_bits :  integer := ERROR101: startup failed:
        Script1.groovy: 1: expecting EOF, found '65536' @ line 1, column 51.
        ddr = (start_addr_local ) "/" 65536;loca
        ^
        
        1 error
        input = log($range_local +1)
    );
    
    port (
        hclk      : in    std_logic;
        hresetn   : in    std_logic;
        
        -- AHBmaster;
        hrdata    : in    std_logic_vector(31 downto 0);
        hgrant    : in    std_logic;
        haddr     : out   std_logic_vector(31 downto 0);
        htrans    : out   std_logic_vector(1 downto 0out);
        hwrite    : out   std_logic;
        hsize     : out   std_logic_vector(2 downto 0);
        hburst    : out   std_logic_vector(2 downto 0);
        hprot     : out   std_logic_vector(3 downto 0);
        hwdata    : out   std_logic_vector(31 downto 0);
        hbusreq   : out   std_logic;
        hready    : in    std_logic;
        hresp     : in    std_logic_vector(1 downto 0);
        
        -- APBslave;
        paddr     : in    std_logic_vector(11 downto 0);
        prdata    : out   std_logic_vector(31 downto 0);
        pwrite    : in    std_logic;
        psel      : in    std_logic;
        penable   : in    std_logic;
        pclk      : in    std_logic;
        presetn   : in    std_logic;
        
        -- SlaveIntController;
        irl       : in    std_logic_vector(3 downto 0);
        irqvec    : out   std_logic_vector(3 downto 0);
        intack    : out   std_logic;
        
        -- JTAG;
        tck       : in    std_logic;
        ntrst     : in    std_logic;
        tms       : in    std_logic;
        tdi       : in    std_logic;
        tdo       : out   std_logic;
        -- Ports
        rst_an    : in    std_logic;
        clk       : in    std_logic;
        clkn      : in    std_logic;
        pwdata    : in    std_logic_vector(31 downto 0);
        SimDone   : out   std_logic
        
    );
    
end  processor;



-------------------------------------------------------------
-- ARCHITECTURE : processor ENTITY
-------------------------------------------------------------


architecture rtl of processor is
    begin
        AHBMASTER: entity work.AHB_rtl
        
        port map (
            
            HRDATA
            =>
            hrdata
            ,
            
            HGRANTx
            =>
            hgrant
            ,
            
            HADDR
            =>
            haddr
            ,
            
            HTRANS
            =>
            htrans
            ,
            
            HWRITE
            =>
            hwrite
            ,
            
            HSIZE
            =>
            hsize
            ,
            
            HBURST
            =>
            hburst
            ,
            
            HPROT
            =>
            hprot
            ,
            
            HWDATA
            =>
            hwdata
            ,
            
            HBUSREQx
            =>
            hbusreq
            ,
            
            HREADY
            =>
            hready
            ,
            
            HRESP
            =>
            hresp
            ,
            
            HCLK
            =>
            hclk
            ,
            
            HRESETn
            =>
            hresetn
            
            
        );
        
        APBSLAVE: entity work.APB_rtl
        
        port map (
            
            PADDR
            =>
            paddr
            ,
            
            PRDATA
            =>
            prdata
            ,
            
            PWRITE
            =>
            pwrite
            ,
            
            PSELx
            =>
            psel
            ,
            
            PENABLE
            =>
            penable
            ,
            
            PCLK
            =>
            pclk
            ,
            
            PRESETn
            =>
            presetn
            
            
        );
        
        SLAVEINTCONTROLLER: entity work.IntProc_rtl
        
        port map (
            
            IRL
            =>
            irl
            ,
            
            IRQVEC
            =>
            irqvec
            ,
            
            INTack
            =>
            intack
            
            
        );
        
        JTAG: entity work.jtag_rtl
        
        port map (
            
            TCK
            =>
            tck
            ,
            
            NTRST
            =>
            ntrst
            ,
            
            TMS
            =>
            tms
            ,
            
            TDI
            =>
            tdi
            ,
            
            TDO
            =>
            tdo
            
            
        );
        
        
        
        
    end rtl;
    
    
