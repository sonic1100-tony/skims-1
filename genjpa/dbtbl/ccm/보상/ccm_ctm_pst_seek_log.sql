--
-- Table structure for table `ccm_ctm_pst_seek_log`
--

DROP TABLE IF EXISTS `ccm_ctm_pst_seek_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ctm_pst_seek_log` (
  `call_no` varchar(23) COLLATE utf8mb4_bin NOT NULL COMMENT '콜번호',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `fr_pst_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최초위치동의여부',
  `next_pst_agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후속위치동의여부',
  `hp_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰전화지역번호',
  `hp_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰전화국번',
  `hp_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰전화일련번호',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `sd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시도',
  `sgng` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시군구',
  `twmd` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '읍면동',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `ctm_x_cdnvl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객X좌표값',
  `ctm_y_cdnvl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객Y좌표값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`call_no`),
  KEY `idx_ccm_ctm_pst_seek_log_10` (`rcp_yymm`,`rcp_nv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객위치찾기로그';
