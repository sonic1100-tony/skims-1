--
-- Table structure for table `ins_cr_relpc_rel`
--

DROP TABLE IF EXISTS `ins_cr_relpc_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_relpc_rel` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `st_relpc_seqno` decimal(10,0) NOT NULL COMMENT '기준관계자순번',
  `cnft_relpc_seqno` decimal(10,0) NOT NULL COMMENT '대응관계자순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `st_relpc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기준관계자유형코드',
  `cnft_relpc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대응관계자유형코드',
  `relpc_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자관계코드',
  `de_ibnf_dvrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '사망보험금배분율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_relpc_rel_00` (`plyno`,`st_relpc_seqno`,`cnft_relpc_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB AUTO_INCREMENT=64139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약관계자관계';
