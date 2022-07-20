--
-- Table structure for table `str_nprp_bzcs_dv_st`
--

DROP TABLE IF EXISTS `str_nprp_bzcs_dv_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_nprp_bzcs_dv_st` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `bzcs_dvcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비배분코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `ins_imcd_lvl` decimal(1,0) NOT NULL COMMENT '보험종목코드레벨',
  `bzct_dv_rt` decimal(20,14) NOT NULL COMMENT '영업비배분비율',
  `bzct_dvamt` decimal(15,0) NOT NULL COMMENT '영업비배분금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`orgcd`,`bzcs_dvcd`,`ins_imcd`,`sl_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비비례사업비배분기준';
