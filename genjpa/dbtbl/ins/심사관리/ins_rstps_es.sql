--
-- Table structure for table `ins_rstps_es`
--

DROP TABLE IF EXISTS `ins_rstps_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rstps_es` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ud_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '심사직원번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ud_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사업무구분코드',
  `ud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사구분코드',
  `ud_gd_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사상품분류코드',
  `ag_stm_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '대리결제직원번호',
  `ap_nd_dthms` datetime NOT NULL DEFAULT '9999-12-31 00:00:00' COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대결자설정';
