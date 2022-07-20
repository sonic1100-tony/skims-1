--
-- Table structure for table `ins_cndl_ud_sbcvr`
--

DROP TABLE IF EXISTS `ins_cndl_ud_sbcvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cndl_ud_sbcvr` (
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `spcf_par_dsas_sbcvr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특정부위질병부담보유형코드',
  `spcf_par_dsas_svrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특정부위질병부담보코드',
  `sbcvr_trmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '부담보기간코드',
  `sbcvr_strdt` date NOT NULL COMMENT '부담보시작일자',
  `sbcvr_nddt` date NOT NULL COMMENT '부담보종료일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`udno`,`ndv_ud_seqno`,`seq`,`spcf_par_dsas_sbcvr_tpcd`,`spcf_par_dsas_svrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='조건부심사부담보';
