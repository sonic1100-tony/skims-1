--
-- Table structure for table `cus_crp_bzps_rl_ownr`
--

DROP TABLE IF EXISTS `cus_crp_bzps_rl_ownr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_crp_bzps_rl_ownr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `crp_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '법인고객번호',
  `ctm_rel_dt_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고객관계세부유형코드',
  `rl_own_ctmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '실소유고객명',
  `rl_own_born_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '실소유출생년도',
  `rl_own_born_mndy` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '실소유출생월일',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `rl_ownr_ntlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실소유자국적코드',
  `rl_ownr_ntl_kornm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실소유자국적한글명',
  `rl_ownr_eng_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실소유자영문고객명',
  `qtrt` decimal(12,6) DEFAULT NULL COMMENT '지분율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_crp_bzps_rl_ownr_00` (`crp_ctmno`,`ctm_rel_dt_tpcd`,`rl_own_ctmnm`,`rl_own_born_yr`,`rl_own_born_mndy`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인사업자실제소유자';
