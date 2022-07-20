--
-- Table structure for table `ins_fmlz_dcu_ntc_prg_adm`
--

DROP TABLE IF EXISTS `ins_fmlz_dcu_ntc_prg_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_fmlz_dcu_ntc_prg_adm` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nds_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서유형코드',
  `ndscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배서코드',
  `nds_ntc_prg_seqno` decimal(5,0) NOT NULL COMMENT '배서안내문구순번',
  `nds_ntc_prg_no` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '배서안내문구번호',
  `nds_ntc_prg_nm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서안내문구명',
  `nds_ntc_prg_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서안내문구내용',
  `fmldc_xpnm` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구비서류설명',
  `bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무파일KEY',
  `vald_strdt` date NOT NULL COMMENT '유효시작일자',
  `vald_nddt` date NOT NULL COMMENT '유효종료일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_fmlz_dcu_ntc_prg_adm_00` (`nds_tpcd`,`ndscd`,`nds_ntc_prg_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구비서류안내문구관리';
