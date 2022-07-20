--
-- Table structure for table `ins_ud_wrk_crr`
--

DROP TABLE IF EXISTS `ins_ud_wrk_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_wrk_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `wrk_crr_seqno` decimal(5,0) NOT NULL COMMENT '작업이력순번',
  `ud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사구분코드',
  `ud_wrk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '심사작업구분코드',
  `ud_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사결과코드',
  `wrk_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '작업직원번호',
  `wrk_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작업일시',
  `udwr_wrk_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '심사자작업여부',
  `wrkr_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업자의견',
  `is_plmdf_need_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입설계수정필요여부',
  `ud_rq_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사요청사유',
  `ud_wrk_slc_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사작업선택코드',
  `ap_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인사유코드',
  `cgaf_ch_seqno` decimal(5,0) DEFAULT NULL COMMENT '발행후변경순번',
  `dcu_cpmt_need_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서류보완필요여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ud_wrk_crr_00` (`udno`,`ndv_ud_seqno`,`wrk_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사작업이력';
