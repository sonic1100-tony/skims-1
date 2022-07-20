--
-- Table structure for table `sam_org_ordr_adm`
--

DROP TABLE IF EXISTS `sam_org_ordr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_org_ordr_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `org_ordr_bsns_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관순서업무종류코드',
  `org_ordr_uspl_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관순서사용처종류코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `org_ordr` decimal(5,0) NOT NULL COMMENT '기관순서',
  `ppr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위기관코드',
  `org_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관구분코드',
  `org_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관유형코드',
  `org_spcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관특성코드',
  `av_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실적대상구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sam_org_ordr_adm_00` (`orgcd`,`org_ordr_bsns_kndcd`,`org_ordr_uspl_kndcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기관순서관리';
