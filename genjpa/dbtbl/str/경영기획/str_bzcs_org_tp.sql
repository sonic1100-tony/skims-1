--
-- Table structure for table `str_bzcs_org_tp`
--

DROP TABLE IF EXISTS `str_bzcs_org_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzcs_org_tp` (
  `dp_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '발의기관코드',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `bzcs_ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비보험종목코드',
  `bzcs_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비유형코드',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dp_orgcd`,`rr_orgcd`,`bzcs_ins_imcd`,`bzcs_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비기관유형';
