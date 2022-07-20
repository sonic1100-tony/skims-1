--
-- Table structure for table `fin_bzcs_prvmn_list`
--

DROP TABLE IF EXISTS `fin_bzcs_prvmn_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bzcs_prvmn_list` (
  `bzcs_prv_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비결재업무구분코드',
  `stf_org_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직원기관구분코드',
  `stf_or_orgcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원/기관코드',
  `prv_seqno` decimal(5,0) NOT NULL COMMENT '결재순번',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '결재자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bzcs_prv_bsns_flgcd`,`stf_org_flgcd`,`stf_or_orgcd`,`prv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비결재자리스트';
