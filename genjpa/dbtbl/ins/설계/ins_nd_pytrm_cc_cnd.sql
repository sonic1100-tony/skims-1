--
-- Table structure for table `ins_nd_pytrm_cc_cnd`
--

DROP TABLE IF EXISTS `ins_nd_pytrm_cc_cnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nd_pytrm_cc_cnd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cc_cnd_gpno` decimal(5,0) NOT NULL COMMENT '산출조건그룹번호',
  `cc_gp_crr_seqno` decimal(5,0) NOT NULL COMMENT '산출그룹이력순번',
  `nd_pytrm_cc_cndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '만기납입기간산출조건코드',
  `cc_cndvl` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '산출조건값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_nd_pytrm_cc_cnd_00` (`gdcd`,`cc_cnd_gpno`,`cc_gp_crr_seqno`,`nd_pytrm_cc_cndcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='만기납입기간산출조건';
