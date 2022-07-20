--
-- Table structure for table `ins_cr_sbcvr_spc`
--

DROP TABLE IF EXISTS `ins_cr_sbcvr_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_sbcvr_spc` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `spcf_par_dsas_sbcvr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특정부위질병부담보유형코드',
  `spcf_par_dsas_svrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특정부위질병부담보코드',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `sbcvr_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부담보기간코드',
  `sbcvr_strdt` date DEFAULT NULL COMMENT '부담보시작일자',
  `sbcvr_nddt` date DEFAULT NULL COMMENT '부담보종료일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`relpc_seqno`,`spcf_par_dsas_sbcvr_tpcd`,`spcf_par_dsas_svrcd`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약부담보내역';
