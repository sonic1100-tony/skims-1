--
-- Table structure for table `fin_spcf_bsns_dl_bj`
--

DROP TABLE IF EXISTS `fin_spcf_bsns_dl_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_spcf_bsns_dl_bj` (
  `fina_bsns_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재무업무유형코드',
  `fina_spcf_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재무특정업무구분코드',
  `fina_spcf_bsns_bj_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '재무특정업무대상분류코드',
  `bj_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '대상순번',
  `psinf_incld_bsns_bjno` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '개인정보포함업무대상번호',
  `bsns_bjno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무대상번호',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`fina_bsns_tpcd`,`fina_spcf_bsns_flgcd`,`fina_spcf_bsns_bj_csfcd`,`bj_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특정업무처리대상';
