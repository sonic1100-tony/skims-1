--
-- Table structure for table `ins_scwnd`
--

DROP TABLE IF EXISTS `ins_scwnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_scwnd` (
  `scwnd_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상병코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `awad_dsnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상병명',
  `dsas_csfnm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병분류명',
  `dsas_info_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질병정보내용',
  `scwnd_sptm_xpnm` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상병증상설명',
  `ud_hmsg_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사도움말내용',
  `ud_st_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사기준내용',
  `ud_fmldc_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사구비서류내용',
  `scwnd_ch_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상병변경내용',
  `scwnd_et_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상병기타내용',
  `prs_dgncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표진단코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`scwnd_cd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상병';
