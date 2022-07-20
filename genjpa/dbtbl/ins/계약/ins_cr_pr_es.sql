--
-- Table structure for table `ins_cr_pr_es`
--

DROP TABLE IF EXISTS `ins_cr_pr_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_pr_es` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `pr_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질권대상구분코드',
  `prps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '질권자고객번호',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `prps_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질권자구분코드',
  `pr_strdt` date NOT NULL COMMENT '질권시작일자',
  `pr_nddt` date NOT NULL COMMENT '질권종료일자',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `peamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '질권금액',
  `cn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해지여부',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_cr_pr_es_00` (`plyno`,`pr_bj_flgcd`,`prps_ctmno`,`nds_ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약질권설정';
