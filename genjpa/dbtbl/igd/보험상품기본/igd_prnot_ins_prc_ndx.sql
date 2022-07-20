--
-- Table structure for table `igd_prnot_ins_prc_ndx`
--

DROP TABLE IF EXISTS `igd_prnot_ins_prc_ndx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_prnot_ins_prc_ndx` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `st_age_ounm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기준연령출력명',
  `injr_rnk_ounm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수출력명',
  `instr_ounm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험기간출력명',
  `pytrm_ounm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입기간출력명',
  `pym_cyc_ounm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기출력명',
  `man_ins_prc_ndx_ounm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '남성보험가격지수출력명',
  `wmn_ins_prc_ndx_ounm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '여성보험가격지수출력명',
  `st_nm_ounm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기준명칭출력명',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`sl_cvrcd`,`ap_strdt`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출력물보험가격지수';
