--
-- Table structure for table `str_nprp_aw_it_adm`
--

DROP TABLE IF EXISTS `str_nprp_aw_it_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_nprp_aw_it_adm` (
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `bzcs_sl_chfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비판매채널구분코드',
  `bzcs_sbr_rr_ikdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비부점귀속보종코드',
  `stf_orgn_lvlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원조직레벨코드',
  `bzcs_dvcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비배분코드',
  `aw_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수당항목코드',
  `us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용여부',
  `ntacc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계정과목명',
  `vald_stdt` date DEFAULT NULL COMMENT '유효시기일자',
  `vald_clsdt` date DEFAULT NULL COMMENT '유효종기일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ntacc_cd`,`bzcs_sl_chfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비비례수당항목관리';
