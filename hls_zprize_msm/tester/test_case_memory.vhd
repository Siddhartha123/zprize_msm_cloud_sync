LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE std.textio.ALL;

ENTITY test_case_memory IS
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
END test_case_memory;

ARCHITECTURE behavior OF test_case_memory IS
    TYPE ram_256d_377w_t IS ARRAY (0 TO 255) OF bit_vector(376 DOWNTO 0);
    TYPE ram_256d_253w_t IS ARRAY (0 TO 255) OF bit_vector(252 DOWNTO 0);
    TYPE ram_2752d_15w_t IS ARRAY (0 TO 2751) OF bit_vector(14 DOWNTO 0);
    TYPE ram_43d_15w_t IS ARRAY (0 TO 42) OF bit_vector(14 DOWNTO 0);
    TYPE ram_1d_15w_t IS ARRAY (0 TO 0) OF bit_vector(14 DOWNTO 0);

    IMPURE FUNCTION readmem_256d_377w(RamFileName : IN STRING) RETURN ram_256d_377w_t IS
        FILE RamFile : text IS IN RamFileName;
        VARIABLE RamFileLine : line;
        VARIABLE RAM : ram_256d_377w_t;
    BEGIN
        FOR I IN ram_256d_377w_t'RANGE LOOP
            readline(RamFile, RamFileLine);
            read(RamFileLine, RAM(I));
        END LOOP;
        RETURN RAM;
    END;

    IMPURE FUNCTION readmem_256d_253w(RamFileName : IN STRING) RETURN ram_256d_253w_t IS
        FILE RamFile : text IS IN RamFileName;
        VARIABLE RamFileLine : line;
        VARIABLE RAM : ram_256d_253w_t;
    BEGIN
        FOR I IN ram_256d_253w_t'RANGE LOOP
            readline(RamFile, RamFileLine);
            read(RamFileLine, RAM(I));
        END LOOP;
        RETURN RAM;
    END;

    IMPURE FUNCTION readmem_2752d_15w(RamFileName : IN STRING) RETURN ram_2752d_15w_t IS
        FILE RamFile : text IS IN RamFileName;
        VARIABLE RamFileLine : line;
        VARIABLE RAM : ram_2752d_15w_t;
    BEGIN
        FOR I IN ram_2752d_15w_t'RANGE LOOP
            readline(RamFile, RamFileLine);
            read(RamFileLine, RAM(I));
        END LOOP;
        RETURN RAM;
    END;

    IMPURE FUNCTION readmem_1d_15w(RamFileName : IN STRING) RETURN ram_1d_15w_t IS
        FILE RamFile : text IS IN RamFileName;
        VARIABLE RamFileLine : line;
        VARIABLE RAM : ram_1d_15w_t;
    BEGIN
        FOR I IN ram_1d_15w_t'RANGE LOOP
            readline(RamFile, RamFileLine);
            read(RamFileLine, RAM(I));
        END LOOP;
        RETURN RAM;
    END;

    IMPURE FUNCTION readmem_43d_15w(RamFileName : IN STRING) RETURN ram_43d_15w_t IS
        FILE RamFile : text IS IN RamFileName;
        VARIABLE RamFileLine : line;
        VARIABLE RAM : ram_43d_15w_t;
    BEGIN
        FOR I IN ram_43d_15w_t'RANGE LOOP
            readline(RamFile, RamFileLine);
            read(RamFileLine, RAM(I));
        END LOOP;
        RETURN RAM;
    END;

    SIGNAL P_arr_x_V : ram_256d_377w_t := readmem_256d_377w("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_8/P_arr_x_V.vhdl.txt");
    SIGNAL P_arr_y_V : ram_256d_377w_t := readmem_256d_377w("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_8/P_arr_y_V.vhdl.txt");
    SIGNAL P_arr_z_V : ram_256d_377w_t := readmem_256d_377w("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_8/P_arr_y_V.vhdl.txt");
    SIGNAL K_arr_V : ram_256d_253w_t := readmem_256d_253w("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_8/K_arr_V.vhdl.txt");

    SIGNAL count_mem : ram_2752d_15w_t := readmem_2752d_15w("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_8/count.vhdl.txt");
    SIGNAL num_padd_ops_mem : ram_43d_15w_t := readmem_43d_15w("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_8/num_padd_ops.vhdl.txt");
    SIGNAL total_num_padd_ops_mem : ram_1d_15w_t := readmem_1d_15w("/home/sid/Documents/zprize/msm_cloud_sync/hls_zprize_msm/tester/testcase_8/total_num_padd_ops.vhdl.txt");
BEGIN
    PROCESS (ap_clk)
    BEGIN
        IF ap_clk'event AND ap_clk = '1' THEN
            IF P_arr_x_V_we0 = '1' THEN
                P_arr_x_V(to_integer(unsigned(P_arr_x_V_address0))) <= to_bitvector(P_arr_x_V_d0);
            END IF;
            P_arr_x_V_q0 <= to_stdlogicvector(P_arr_x_V(to_integer(unsigned(P_arr_x_V_address0))));

            IF P_arr_y_V_we0 = '1' THEN
                P_arr_y_V(to_integer(unsigned(P_arr_y_V_address0))) <= to_bitvector(P_arr_y_V_d0);
            END IF;
            P_arr_y_V_q0 <= to_stdlogicvector(P_arr_y_V(to_integer(unsigned(P_arr_y_V_address0))));

            IF P_arr_z_V_we0 = '1' THEN
                P_arr_z_V(to_integer(unsigned(P_arr_z_V_address0))) <= to_bitvector(P_arr_z_V_d0);
            END IF;
            P_arr_z_V_q0 <= to_stdlogicvector(P_arr_z_V(to_integer(unsigned(P_arr_z_V_address0))));

            IF K_arr_V_we0 = '1' THEN
                K_arr_V(to_integer(unsigned(K_arr_V_address0))) <= to_bitvector(K_arr_V_d0);
            END IF;
            K_arr_V_q0 <= to_stdlogicvector(K_arr_V(to_integer(unsigned(K_arr_V_address0))));

            IF P_arr_x_V_we1 = '1' THEN
                P_arr_x_V(to_integer(unsigned(P_arr_x_V_address1))) <= to_bitvector(P_arr_x_V_d1);
            END IF;
            P_arr_x_V_q1 <= to_stdlogicvector(P_arr_x_V(to_integer(unsigned(P_arr_x_V_address1))));

            IF P_arr_y_V_we1 = '1' THEN
                P_arr_y_V(to_integer(unsigned(P_arr_y_V_address1))) <= to_bitvector(P_arr_y_V_d1);
            END IF;
            P_arr_y_V_q1 <= to_stdlogicvector(P_arr_y_V(to_integer(unsigned(P_arr_y_V_address1))));

            IF P_arr_z_V_we1 = '1' THEN
                P_arr_z_V(to_integer(unsigned(P_arr_z_V_address1))) <= to_bitvector(P_arr_z_V_d1);
            END IF;
            P_arr_z_V_q1 <= to_stdlogicvector(P_arr_z_V(to_integer(unsigned(P_arr_z_V_address1))));

            IF K_arr_V_we1 = '1' THEN
                K_arr_V(to_integer(unsigned(K_arr_V_address1))) <= to_bitvector(K_arr_V_d1);
            END IF;
            K_arr_V_q1 <= to_stdlogicvector(K_arr_V(to_integer(unsigned(K_arr_V_address1))));
        END IF;
    END PROCESS;

    count_data <= to_stdlogicvector(count_mem(to_integer(unsigned(count_address))));
    num_padd_ops_data <= to_stdlogicvector(num_padd_ops_mem(to_integer(unsigned(num_padd_ops_address))));

    total_num_padd_ops <= to_stdlogicvector(total_num_padd_ops_mem(0));
    -- total_num_padd_ops <= STD_LOGIC_VECTOR(to_unsigned(8051, 10));
END;