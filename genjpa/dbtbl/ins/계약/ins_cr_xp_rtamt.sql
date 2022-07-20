--
-- Table structure for table `ins_cr_xp_rtamt`
--

DROP TABLE IF EXISTS `ins_cr_xp_rtamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_xp_rtamt` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `rtamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '환급금구분코드',
  `seq` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '회차',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `rtn_crdt` date NOT NULL COMMENT '환급발생일자',
  `pym_prm` decimal(17,2) NOT NULL COMMENT '납입보험료',
  `lgrat_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '최저보증이율환급금액',
  `lgrat_rtn_rate` decimal(12,6) NOT NULL COMMENT '최저보증이율환급률',
  `avg_dcl_rato_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '평균공시이율환급금액',
  `avg_dcl_rato_rtn_rate` decimal(12,6) NOT NULL COMMENT '평균공시이율환급률',
  `aprat_rtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '적용이율환급금액',
  `aprat_rtn_rate` decimal(12,6) NOT NULL COMMENT '적용이율환급률',
  `rtamt_cr_stdt` date NOT NULL COMMENT '환급금발생기준일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_cr_xp_rtamt_00` (`plyno`,`rtamt_flgcd`,`seq`,`nds_ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약예상환급금';
