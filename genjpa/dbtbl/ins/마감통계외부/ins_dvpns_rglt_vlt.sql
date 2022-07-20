--
-- Table structure for table `ins_dvpns_rglt_vlt`
--

DROP TABLE IF EXISTS `ins_dvpns_rglt_vlt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_rglt_vlt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vltr_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '위반자주민번호',
  `vltr_seqno` decimal(5,0) NOT NULL COMMENT '위반자순번',
  `vlt_strno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위반스티커번호',
  `vltdt` date NOT NULL COMMENT '위반일자',
  `vltr_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '위반자성명',
  `dat_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터상태코드',
  `mdfbf_vltr_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정전위반자주민번호',
  `mdfbf_vltr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정전위반자성명',
  `rglt_vlt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법규위반구분코드',
  `drve_licno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전면허번호',
  `dvpns_stue` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원법령코드',
  `crpl_pcecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생지경찰서코드',
  `dl_dthms` datetime NOT NULL COMMENT '처리일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dvpns_rglt_vlt_00` (`vltr_rsno`,`vltr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원법규위반';
