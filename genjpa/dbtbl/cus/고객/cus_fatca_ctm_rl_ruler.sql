--
-- Table structure for table `cus_fatca_ctm_rl_ruler`
--

DROP TABLE IF EXISTS `cus_fatca_ctm_rl_ruler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_fatca_ctm_rl_ruler` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `rl_ruler_seqno` decimal(5,0) NOT NULL COMMENT '실제지배자순번',
  `eng_name_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문이름명',
  `eng_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문성명',
  `pytx_rgtno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납세등록번호',
  `ntncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국가코드',
  `eng_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문주소',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_fatca_ctm_rl_ruler_00` (`ctmno`,`crr_seqno`,`rl_ruler_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='FATCA고객실제지배자';
