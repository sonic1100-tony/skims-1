--
-- Table structure for table `cus_chn_cns_crr`
--

DROP TABLE IF EXISTS `cus_chn_cns_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_chn_cns_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cns_dthms` datetime NOT NULL COMMENT '상담일시',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cns_chn_metd_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상담채널방식명',
  `cns_bsns_flgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담업무구분명',
  `cns_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담직원번호',
  `cns_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담지점기관코드',
  `cns_man_relnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담인관계명',
  `tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화번호',
  `cns_csfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담분류명',
  `cns_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상담내용',
  `cmpx_bz_orgcd` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합영업기관코드',
  `cmpx_bz_cns_crr_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합영업상담이력ID',
  `cmpx_bz_ctmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합영업고객번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_chn_cns_crr_00` (`cns_dthms`,`ctmno`,`cns_chn_metd_nm`),
  KEY `idx_cus_chn_cns_crr_10` (`ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='채널상담이력';
