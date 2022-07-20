--
-- Table structure for table `ccm_cmp_ntc_adm`
--

DROP TABLE IF EXISTS `ccm_cmp_ntc_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cmp_ntc_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `cmp_ntc_seqno` decimal(3,0) NOT NULL COMMENT '보상안내순번',
  `ntc_tp_dgrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '안내유형차수코드',
  `ntc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '안내유형코드',
  `ntc_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '안내방법코드',
  `ntc_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '안내대상구분코드',
  `ntc_bjps_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내대상자주민번호',
  `ntc_bjnm` varchar(300) COLLATE utf8mb4_bin NOT NULL COMMENT '안내대상명',
  `ntc_bjps_relcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '안내대상자관계코드',
  `ntcgu_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '안내자직원번호',
  `ntc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내여부',
  `ntc_dthms` datetime NOT NULL COMMENT '안내일시',
  `ntc_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '안내내용',
  `fnl_ntc_mtd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종안내방법구분코드',
  `bjps_cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상자보상키년도',
  `bjps_cmp_ky_seqno` decimal(10,0) DEFAULT NULL COMMENT '대상자보상키순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cmp_ntc_adm_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`cmp_ntc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보상안내관리';
