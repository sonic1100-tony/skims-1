--
-- Table structure for table `ccm_clm_cnn_cr`
--

DROP TABLE IF EXISTS `ccm_clm_cnn_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_clm_cnn_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cnn_crcrr_seqno` decimal(3,0) NOT NULL COMMENT '사고관련차량이력순번',
  `clm_cnn_cr_seqno` decimal(3,0) NOT NULL COMMENT '사고관련차량순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `clm_cnn_cr_chfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고관련차량채널구분코드',
  `pln_mvo_seqno` decimal(3,0) DEFAULT NULL COMMENT '현장출동순번',
  `carnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '차명',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `fltrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '과실율',
  `cr_drvnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량운전자명',
  `cr_drv_tl_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량운전자전화지역번호',
  `cr_drv_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량운전자전화국번',
  `cr_drv_tl_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량운전자전화일련번호',
  `cr_is_inscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량가입보험사코드',
  `cr_rcpno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량접수번호',
  `cr_chrps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량담당자명',
  `cr_chrps_tl_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량담당자전화지역번호',
  `cr_chrps_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량담당자전화국번',
  `cr_chrps_tl_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량담당자전화일련번호',
  `clm_relcc_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고관련자사항',
  `clm_cnn_car_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고관련차량구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_clm_cnn_cr_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cnn_crcrr_seqno`,`clm_cnn_cr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고관련차량';
