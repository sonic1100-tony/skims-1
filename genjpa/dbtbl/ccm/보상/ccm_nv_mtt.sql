--
-- Table structure for table `ccm_nv_mtt`
--

DROP TABLE IF EXISTS `ccm_nv_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_nv_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `nv_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '조사업무구분코드',
  `nv_mtt_seqno` decimal(5,0) NOT NULL COMMENT '조사사항순번',
  `nvdt` date DEFAULT NULL COMMENT '조사일자',
  `nvr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사자직원번호',
  `nv_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_nv_mtt_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`nv_bsns_flgcd`,`nv_mtt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='조사사항';
