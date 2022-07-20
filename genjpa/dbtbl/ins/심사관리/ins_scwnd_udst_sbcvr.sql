--
-- Table structure for table `ins_scwnd_udst_sbcvr`
--

DROP TABLE IF EXISTS `ins_scwnd_udst_sbcvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_scwnd_udst_sbcvr` (
  `scwnd_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상병코드',
  `scwnd_cl_snro_no` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '상병별시나리오번호',
  `spcf_par_dsas_sbcvr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특정부위질병부담보유형코드',
  `spcf_par_dsas_svrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특정부위질병부담보코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `sbcvr_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부담보기간코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`scwnd_cd`,`scwnd_cl_snro_no`,`spcf_par_dsas_sbcvr_tpcd`,`spcf_par_dsas_svrcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상병인수기준부담보';
