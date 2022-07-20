--
-- Table structure for table `gea_hot_bzcs_xc_crr`
--

DROP TABLE IF EXISTS `gea_hot_bzcs_xc_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_hot_bzcs_xc_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hot_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '임대차등록번호',
  `hot_adm_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '임대차관리항목코드',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `evddt` date DEFAULT NULL COMMENT '증빙일자',
  `evdno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙번호',
  `rntrt_py_cmamt` decimal(15,0) DEFAULT '0' COMMENT '임차료지급당월금액',
  `rntrt_py_inp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임차료지급입력여부',
  `ta_ap_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총무승인상태코드',
  `ac_tf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경리이체여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_hot_bzcs_xc_crr_00` (`hot_rgtno`,`hot_adm_itcd`,`st_yymm`,`dl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='임대차사업비집행이력';
