--
-- Table structure for table `ins_pl_pr_es`
--

DROP TABLE IF EXISTS `ins_pl_pr_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_pr_es` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `pr_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질권대상구분코드',
  `prps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '질권자고객번호',
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
  UNIQUE KEY `idx_ins_pl_pr_es_00` (`plno`,`cgaf_ch_seqno`,`pr_bj_flgcd`,`prps_ctmno`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계질권설정';
