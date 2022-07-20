--
-- Table structure for table `ins_oj_tp_peamt`
--

DROP TABLE IF EXISTS `ins_oj_tp_peamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_oj_tp_peamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `rel_bjpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '관계대상코드',
  `oj_tpcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '목적물유형코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `olcrr_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '구이력순번',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `peamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '질권금액',
  `pr_es_nddt` date DEFAULT NULL COMMENT '질권설정종료일자',
  `pr_es_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질권설정상태코드',
  `pr_es_strdt` date DEFAULT NULL COMMENT '질권설정시작일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_oj_tp_peamt_00` (`plyno`,`relpc_seqno`,`rel_bjpcd`,`oj_tpcd`,`ap_nddt`,`ap_strdt`,`ndsno`,`olcrr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='목적물유형질권금액';
