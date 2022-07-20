--
-- Table structure for table `fin_bzcs_prv_dmd`
--

DROP TABLE IF EXISTS `fin_bzcs_prv_dmd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bzcs_prv_dmd` (
  `bzcs_prv_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비결재업무구분코드',
  `stf_org_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직원기관구분코드',
  `stf_or_orgcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원/기관코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bzcs_prv_bsns_flgcd`,`stf_org_flgcd`,`stf_or_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비결재요청자';
