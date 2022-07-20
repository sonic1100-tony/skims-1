--
-- Table structure for table `ins_scwnd_udst_xc`
--

DROP TABLE IF EXISTS `ins_scwnd_udst_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_scwnd_udst_xc` (
  `scwnd_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상병코드',
  `scwnd_cl_snro_no` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '상병별시나리오번호',
  `xcap_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '할증적용유형코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `xc_rk_ndx` decimal(12,6) NOT NULL COMMENT '할증위험지수',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`scwnd_cd`,`scwnd_cl_snro_no`,`xcap_tpcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상병인수기준할증';
