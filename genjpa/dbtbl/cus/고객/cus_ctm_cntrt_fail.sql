--
-- Table structure for table `cus_ctm_cntrt_fail`
--

DROP TABLE IF EXISTS `cus_ctm_cntrt_fail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_cntrt_fail` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cntrt_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '접촉방법코드',
  `cntrt_dthms` datetime NOT NULL COMMENT '접촉일시',
  `event_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이벤트명',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `cntad_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `str_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시작전화일련번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `cntrt_fail_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉실패사유코드',
  `cntrt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉직원번호',
  `cntrt_fail_rcv_dthms` datetime DEFAULT NULL COMMENT '접촉실패수신일시',
  `sms_snd_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS발송분류코드',
  `ctm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객직원번호',
  `cntrt_scc_rcv_dthms` datetime DEFAULT NULL COMMENT '접촉성공수신일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_cntrt_fail_00` (`ctmno`,`cntrt_mtdcd`,`cntrt_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객접촉실패';
