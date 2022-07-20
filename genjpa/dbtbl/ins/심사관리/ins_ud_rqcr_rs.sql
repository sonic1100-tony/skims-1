--
-- Table structure for table `ins_ud_rqcr_rs`
--

DROP TABLE IF EXISTS `ins_ud_rqcr_rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_rqcr_rs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `wrk_crr_seqno` decimal(5,0) NOT NULL COMMENT '작업이력순번',
  `rqcr_rs_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요청발생사유분류코드',
  `rqcr_rs_seqno` decimal(5,0) NOT NULL COMMENT '요청발생사유순번',
  `rqcr_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청발생사유코드',
  `rqcr_bsc_rltno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청발생근거연계번호',
  `rqcr_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청발생사유',
  `chbf_dtspc` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전세부내역',
  `chaf_dtspc` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후세부내역',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_ud_rqcr_rs_00` (`udno`,`ndv_ud_seqno`,`wrk_crr_seqno`,`rqcr_rs_csfcd`,`rqcr_rs_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사요청발생사유';
