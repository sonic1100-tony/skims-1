--
-- Table structure for table `igd_atvt_dc_pnt_cl_dscrt`
--

DROP TABLE IF EXISTS `igd_atvt_dc_pnt_cl_dscrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_atvt_dc_pnt_cl_dscrt` (
  `atvt_dc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'Activity할인유형코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `dc_ap_pnt_mnvl` decimal(15,2) NOT NULL COMMENT '할인적용포인트최소값',
  `dc_ap_pnt_mxvl` decimal(15,2) NOT NULL COMMENT '할인적용포인트최대값',
  `ap_dscrt` decimal(12,6) NOT NULL COMMENT '적용할인율',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`atvt_dc_tpcd`,`seqno`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Activity할인포인트별할인율';
