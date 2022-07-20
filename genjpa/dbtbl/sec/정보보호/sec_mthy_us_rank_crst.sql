--
-- Table structure for table `sec_mthy_us_rank_crst`
--

DROP TABLE IF EXISTS `sec_mthy_us_rank_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_mthy_us_rank_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `stf_org_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직원기관구분코드',
  `stfno_or_orgcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호/기관코드',
  `us_rank` decimal(5,0) NOT NULL COMMENT '사용순위',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_sec_mthy_us_rank_crst_00` (`st_yymm`,`stf_org_flgcd`,`stfno_or_orgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=2486 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='월별사용순위현황';
