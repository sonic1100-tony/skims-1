--
-- Table structure for table `fin_dat_exec_vrf`
--

DROP TABLE IF EXISTS `fin_dat_exec_vrf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dat_exec_vrf` (
  `prg_dgre` decimal(3,0) NOT NULL COMMENT '진행차수',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `cnn_tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '관련테이블명',
  `cnn_clmnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '관련컬럼명',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `load_ct` decimal(15,0) DEFAULT NULL COMMENT '적재건수',
  `amt_1` decimal(15,0) DEFAULT NULL COMMENT '금액1',
  `amt_2` decimal(15,0) DEFAULT NULL COMMENT '금액2',
  `amt_3` decimal(15,0) DEFAULT NULL COMMENT '금액3',
  `amt_4` decimal(15,0) DEFAULT NULL COMMENT '금액4',
  `amt_5` decimal(15,0) DEFAULT NULL COMMENT '금액5',
  `amt_6` decimal(15,0) DEFAULT NULL COMMENT '금액6',
  `amt7` decimal(17,2) DEFAULT NULL COMMENT '금액7',
  `amt8` decimal(17,2) DEFAULT NULL COMMENT '금액8',
  `amt9` decimal(17,2) DEFAULT NULL COMMENT '금액9',
  `amt10` decimal(17,2) DEFAULT NULL COMMENT '금액10',
  `no1_bavl` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번기본값',
  `no2_bavl` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번기본값',
  `no3_bavl` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번기본값',
  `no4_bavl` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4번기본값',
  `no5_bavl` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5번기본값',
  `er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내용',
  `dl_rst_er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리결과오류내용',
  `clm_sql_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '컬럼SQL내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`prg_dgre`,`bsns_flgcd`,`cnn_tabnm`,`cnn_clmnm`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='데이터이행검증';
