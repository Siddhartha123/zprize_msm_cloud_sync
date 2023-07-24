LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY sys_test IS
    GENERIC (
        EC_BASE_FIELD_WIDTH : INTEGER := 377;
        EC_SCALAR_FIELD_WIDTH : INTEGER := 253;
        ADDR_WIDTH : INTEGER := 8;
        MEM_SIZE : INTEGER := 256;
        CLK_PERIOD : TIME := 1 ns
    );
END sys_test;

ARCHITECTURE behavior OF sys_test IS
    COMPONENT msm_arr IS
        PORT (
            ap_local_block : OUT STD_LOGIC;
            ap_local_deadlock : OUT STD_LOGIC;
            ap_clk : IN STD_LOGIC;
            ap_rst : IN STD_LOGIC;
            P_arr_x_address0 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            P_arr_x_ce0 : OUT STD_LOGIC;
            P_arr_x_d0 : OUT STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_x_q0 : IN STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_x_we0 : OUT STD_LOGIC;
            P_arr_x_address1 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            P_arr_x_ce1 : OUT STD_LOGIC;
            P_arr_x_d1 : OUT STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_x_q1 : IN STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_x_we1 : OUT STD_LOGIC;
            P_arr_y_address0 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            P_arr_y_ce0 : OUT STD_LOGIC;
            P_arr_y_d0 : OUT STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_y_q0 : IN STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_y_we0 : OUT STD_LOGIC;
            P_arr_y_address1 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            P_arr_y_ce1 : OUT STD_LOGIC;
            P_arr_y_d1 : OUT STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_y_q1 : IN STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_y_we1 : OUT STD_LOGIC;
            P_arr_z_address0 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            P_arr_z_ce0 : OUT STD_LOGIC;
            P_arr_z_d0 : OUT STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_z_q0 : IN STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_z_we0 : OUT STD_LOGIC;
            P_arr_z_address1 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            P_arr_z_ce1 : OUT STD_LOGIC;
            P_arr_z_d1 : OUT STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_z_q1 : IN STD_LOGIC_VECTOR (376 DOWNTO 0);
            P_arr_z_we1 : OUT STD_LOGIC;
            K_arr_address0 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            K_arr_ce0 : OUT STD_LOGIC;
            K_arr_d0 : OUT STD_LOGIC_VECTOR (252 DOWNTO 0);
            K_arr_q0 : IN STD_LOGIC_VECTOR (252 DOWNTO 0);
            K_arr_we0 : OUT STD_LOGIC;
            K_arr_address1 : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
            K_arr_ce1 : OUT STD_LOGIC;
            K_arr_d1 : OUT STD_LOGIC_VECTOR (252 DOWNTO 0);
            K_arr_q1 : IN STD_LOGIC_VECTOR (252 DOWNTO 0);
            K_arr_we1 : OUT STD_LOGIC;
            count_stream_dout : IN STD_LOGIC_VECTOR (14 DOWNTO 0);
            count_stream_empty_n : IN STD_LOGIC;
            count_stream_read : OUT STD_LOGIC;
            num_padd_ops_dout : IN STD_LOGIC_VECTOR (14 DOWNTO 0);
            num_padd_ops_empty_n : IN STD_LOGIC;
            num_padd_ops_read : OUT STD_LOGIC;
            total_num_padd_ops : IN STD_LOGIC_VECTOR (14 DOWNTO 0);
            ap_start : IN STD_LOGIC;
            ap_done : OUT STD_LOGIC;
            ap_return : OUT STD_LOGIC_VECTOR (1535 DOWNTO 0);
            ap_ready : OUT STD_LOGIC;
            ap_idle : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT test_case_memory IS
        GENERIC (
            EC_BASE_FIELD_WIDTH : INTEGER := 377;
            EC_SCALAR_FIELD_WIDTH : INTEGER := 253;
            ADDR_WIDTH : INTEGER := 8;
            MEM_SIZE : INTEGER := 256
        );
        PORT (
            ap_clk : IN STD_LOGIC;
            P_arr_x_V_address0, P_arr_x_V_address1, P_arr_y_V_address0, P_arr_y_V_address1, P_arr_z_V_address0, P_arr_z_V_address1, K_arr_V_address0, K_arr_V_address1 : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
            P_arr_x_V_d0, P_arr_x_V_d1, P_arr_y_V_d0, P_arr_y_V_d1, P_arr_z_V_d0, P_arr_z_V_d1 : IN STD_LOGIC_VECTOR(EC_BASE_FIELD_WIDTH - 1 DOWNTO 0);
            P_arr_x_V_q0, P_arr_x_V_q1, P_arr_y_V_q0, P_arr_y_V_q1, P_arr_z_V_q0, P_arr_z_V_q1 : OUT STD_LOGIC_VECTOR(EC_BASE_FIELD_WIDTH - 1 DOWNTO 0);
            P_arr_x_V_ce0, P_arr_x_V_ce1, P_arr_x_V_we0, P_arr_x_V_we1, P_arr_y_V_ce0, P_arr_y_V_ce1, P_arr_y_V_we0, P_arr_y_V_we1, P_arr_z_V_ce0, P_arr_z_V_we0, P_arr_z_V_ce1, P_arr_z_V_we1, K_arr_V_ce0, K_arr_V_ce1, K_arr_V_we0, K_arr_V_we1 : IN STD_LOGIC;
            K_arr_V_d0, K_arr_V_d1 : IN STD_LOGIC_VECTOR(EC_SCALAR_FIELD_WIDTH - 1 DOWNTO 0);
            K_arr_V_q0, K_arr_V_q1 : OUT STD_LOGIC_VECTOR(EC_SCALAR_FIELD_WIDTH - 1 DOWNTO 0);
            total_num_padd_ops : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
            count_address : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
            count_data : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
            num_padd_ops_address : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            num_padd_ops_data : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL ap_clk : STD_LOGIC := '0';
    SIGNAL ap_rst, ap_start, ap_done, ap_idle, ap_ready : STD_LOGIC := '0';
    SIGNAL P_arr_x_address0, P_arr_y_address0, P_arr_z_address0, P_arr_x_address1, P_arr_y_address1, P_arr_z_address1, K_arr_address0, K_arr_address1 : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);

    SIGNAL P_arr_x_q0, P_arr_x_d0, P_arr_y_q0, P_arr_y_d0, P_arr_z_q0, P_arr_z_d0, P_arr_x_q1, P_arr_x_d1, P_arr_y_q1, P_arr_y_d1, P_arr_z_q1, P_arr_z_d1 : STD_LOGIC_VECTOR(EC_BASE_FIELD_WIDTH - 1 DOWNTO 0);
    SIGNAL K_arr_q0, K_arr_d0, K_arr_q1, K_arr_d1 : STD_LOGIC_VECTOR(EC_SCALAR_FIELD_WIDTH - 1 DOWNTO 0);

    SIGNAL P_arr_x_ce0, P_arr_x_we0,
    P_arr_y_ce0, P_arr_y_we0,
    P_arr_z_ce0, P_arr_z_we0,
    P_arr_x_ce1, P_arr_x_we1,
    P_arr_y_ce1, P_arr_y_we1,
    P_arr_z_ce1, P_arr_z_we1, K_arr_ce0, K_arr_we0,
    K_arr_ce1, K_arr_we1 : STD_LOGIC;

    SIGNAL read_count : STD_LOGIC_VECTOR(12 DOWNTO 0) := (OTHERS => '0');
    SIGNAL read_num_padd_ops : STD_LOGIC_VECTOR(9 DOWNTO 0) := (OTHERS => '0');

    SIGNAL count_test_mem_data, total_num_padd_ops : STD_LOGIC_VECTOR(14 DOWNTO 0);
    SIGNAL count_stream_empty_n, count_stream_read : STD_LOGIC;
    SIGNAL num_padd_ops_test_mem_data : STD_LOGIC_VECTOR(14 DOWNTO 0);
    SIGNAL num_padd_ops_stream_empty_n, num_padd_ops_stream_read : STD_LOGIC;
    SIGNAL msm_return : STD_LOGIC_VECTOR(1535 DOWNTO 0);
BEGIN
    test_case_mem_0 : test_case_memory GENERIC MAP(
        EC_BASE_FIELD_WIDTH => EC_BASE_FIELD_WIDTH,
        EC_SCALAR_FIELD_WIDTH => EC_SCALAR_FIELD_WIDTH,
        ADDR_WIDTH => ADDR_WIDTH,
        MEM_SIZE => MEM_SIZE) PORT MAP(
        ap_clk => ap_clk,
        P_arr_x_V_address0 => P_arr_x_address0,
        P_arr_x_V_address1 => P_arr_x_address1,
        P_arr_y_V_address0 => P_arr_y_address0,
        P_arr_y_V_address1 => P_arr_y_address1,
        P_arr_z_V_address0 => P_arr_z_address0,
        P_arr_z_V_address1 => P_arr_z_address1,
        K_arr_V_address0 => K_arr_address0,
        K_arr_V_address1 => K_arr_address1,
        P_arr_x_V_d0 => P_arr_x_d0,
        P_arr_x_V_d1 => P_arr_x_d1,
        P_arr_y_V_d0 => P_arr_y_d0,
        P_arr_y_V_d1 => P_arr_y_d1,
        P_arr_z_V_d0 => P_arr_z_d0,
        P_arr_z_V_d1 => P_arr_z_d1,
        P_arr_x_V_q0 => P_arr_x_q0,
        P_arr_x_V_q1 => P_arr_x_q1,
        P_arr_y_V_q0 => P_arr_y_q0,
        P_arr_y_V_q1 => P_arr_y_q1,
        P_arr_z_V_q0 => P_arr_z_q0,
        P_arr_z_V_q1 => P_arr_z_q1,
        P_arr_x_V_ce0 => P_arr_x_ce0,
        P_arr_x_V_ce1 => P_arr_x_ce1,
        P_arr_x_V_we0 => P_arr_x_we0,
        P_arr_x_V_we1 => P_arr_x_we1,
        P_arr_y_V_ce0 => P_arr_y_ce0,
        P_arr_y_V_ce1 => P_arr_y_ce1,
        P_arr_y_V_we0 => P_arr_y_we0,
        P_arr_y_V_we1 => P_arr_y_we1,
        P_arr_z_V_ce0 => P_arr_z_ce0,
        P_arr_z_V_we0 => P_arr_z_we0,
        P_arr_z_V_ce1 => P_arr_z_ce1,
        P_arr_z_V_we1 => P_arr_z_we1,
        K_arr_V_ce0 => K_arr_ce0,
        K_arr_V_ce1 => K_arr_ce1,
        K_arr_V_we0 => K_arr_we0,
        K_arr_V_we1 => K_arr_we1,
        K_arr_V_d0 => K_arr_d0,
        K_arr_V_d1 => K_arr_d1,
        K_arr_V_q0 => K_arr_q0,
        K_arr_V_q1 => K_arr_q1,
        total_num_padd_ops => total_num_padd_ops,
        count_address => read_count,
        count_data => count_test_mem_data,
        num_padd_ops_address => read_num_padd_ops,
        num_padd_ops_data => num_padd_ops_test_mem_data);

    uut : msm_arr PORT MAP(
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_done => ap_done,
        ap_idle => ap_idle,
        ap_ready => ap_ready,
        P_arr_x_address0 => P_arr_x_address0,
        P_arr_x_ce0 => P_arr_x_ce0,
        P_arr_x_we0 => P_arr_x_we0,
        P_arr_x_q0 => P_arr_x_q0,
        P_arr_x_d0 => P_arr_x_d0,
        P_arr_y_address0 => P_arr_y_address0,
        P_arr_y_ce0 => P_arr_y_ce0,
        P_arr_y_we0 => P_arr_y_we0,
        P_arr_y_q0 => P_arr_y_q0,
        P_arr_y_d0 => P_arr_y_d0,
        P_arr_z_address0 => P_arr_z_address0,
        P_arr_z_ce0 => P_arr_z_ce0,
        P_arr_z_we0 => P_arr_z_we0,
        P_arr_z_q0 => P_arr_z_q0,
        P_arr_z_d0 => P_arr_z_d0,
        P_arr_x_address1 => P_arr_x_address1,
        P_arr_x_ce1 => P_arr_x_ce1,
        P_arr_x_we1 => P_arr_x_we1,
        P_arr_x_q1 => P_arr_x_q1,
        P_arr_x_d1 => P_arr_x_d1,
        P_arr_y_address1 => P_arr_y_address1,
        P_arr_y_ce1 => P_arr_y_ce1,
        P_arr_y_we1 => P_arr_y_we1,
        P_arr_y_q1 => P_arr_y_q1,
        P_arr_y_d1 => P_arr_y_d1,
        P_arr_z_address1 => P_arr_z_address1,
        P_arr_z_ce1 => P_arr_z_ce1,
        P_arr_z_we1 => P_arr_z_we1,
        P_arr_z_q1 => P_arr_z_q1,
        P_arr_z_d1 => P_arr_z_d1,
        K_arr_address0 => K_arr_address0,
        K_arr_ce0 => K_arr_ce0,
        K_arr_we0 => K_arr_we0,
        K_arr_q0 => K_arr_q0,
        K_arr_d0 => K_arr_d0,
        K_arr_address1 => K_arr_address1,
        K_arr_ce1 => K_arr_ce1,
        K_arr_we1 => K_arr_we1,
        K_arr_q1 => K_arr_q1,
        K_arr_d1 => K_arr_d1,
        count_stream_dout => count_test_mem_data,
        count_stream_empty_n => count_stream_empty_n,
        count_stream_read => count_stream_read,
        num_padd_ops_dout => num_padd_ops_test_mem_data,
        num_padd_ops_empty_n => num_padd_ops_stream_empty_n,
        num_padd_ops_read => num_padd_ops_stream_read,
        total_num_padd_ops => total_num_padd_ops,
        ap_return => msm_return);

    stim_proc : PROCESS
    BEGIN
        WAIT FOR 0.5 ns;
        ap_start <= '0';
        ap_rst <= '0';
        read_count <= (OTHERS => '0');
        read_num_padd_ops <= (OTHERS => '0');
        WAIT FOR 2 ns;
        ap_rst <= '1';
        WAIT FOR 2 ns;
        ap_rst <= '0';
        WAIT FOR 2 ns;
        ap_start <= '1';
        WAIT;
    END PROCESS;

    start_proc : PROCESS (ap_clk)
    BEGIN
        IF ap_clk'event AND ap_clk = '1' AND ap_done = '1' THEN
            ap_start <= '0';
        ELSE
            ap_start <= '1';
        END IF;
    END PROCESS;

    count_stream_empty_n <= '0' WHEN (read_count = STD_LOGIC_VECTOR(to_unsigned(2752, 10))) ELSE
        '1';

    num_padd_ops_stream_empty_n <= '0' WHEN (read_num_padd_ops = STD_LOGIC_VECTOR(to_unsigned(43, 10))) ELSE
        '1';

    stream_read_proc : PROCESS (ap_clk)
    BEGIN
        IF ap_clk'event AND ap_clk = '1' AND count_stream_read = '1' THEN
            read_count <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(read_count)) + 1, 13));
        END IF;

        IF ap_clk'event AND ap_clk = '1' AND num_padd_ops_stream_read = '1' THEN
            read_num_padd_ops <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(read_num_padd_ops)) + 1, 10));
        END IF;
    END PROCESS;

    clk_proc : PROCESS (ap_clk)
        VARIABLE half_period : TIME := CLK_PERIOD/2;
    BEGIN
        ap_clk <= NOT ap_clk AFTER half_period;
    END PROCESS;
END;