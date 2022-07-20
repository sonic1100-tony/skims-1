--
-- Table structure for table `ins_cr_prm_dc`
--

DROP TABLE IF EXISTS `ins_cr_prm_dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_prm_dc` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `dc_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '할인종류코드',
  `relpc_oj_seqno` decimal(10,0) DEFAULT NULL COMMENT '관계자목적물순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) DEFAULT NULL COMMENT '담보순번',
  `dscrt` decimal(12,6) NOT NULL COMMENT '할인율',
  `dcamt` decimal(15,0) NOT NULL COMMENT '할인금액',
  `prm_dc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험료할인구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`seqno`,`nds_ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약보험료할인';
