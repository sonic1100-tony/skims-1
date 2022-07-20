--
-- Table structure for table `fin_ldg_ch_rq`
--

DROP TABLE IF EXISTS `fin_ldg_ch_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ldg_ch_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `rq_dthms` datetime NOT NULL COMMENT '요청일시',
  `ap_dthms` datetime DEFAULT NULL COMMENT '승인일시',
  `ldg_ch_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장변경상태코드',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자직원번호',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '처리자직원번호',
  `fnl_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종승인직원번호',
  `ch_rs` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '변경사유',
  `cnn_dcuno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련문서번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_ldg_ch_rq_00` (`reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='원장변경요청';
