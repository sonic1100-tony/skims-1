--
-- Table structure for table `ins_cmins_chr_admr_av`
--

DROP TABLE IF EXISTS `ins_cmins_chr_admr_av`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmins_chr_admr_av` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `stf_or_orgcd` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원/기관코드',
  `cmins_av_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반보험실적대상구분코드',
  `thcp_prm` decimal(17,2) DEFAULT NULL COMMENT '당사보험료',
  `thcp_cn_rtamt` decimal(15,0) DEFAULT NULL COMMENT '당사해약환급금',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`stf_or_orgcd`,`cmins_av_bj_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험담당관리자실적';
