--
-- Table structure for table `fin_mbrs_ctmno_inq_tlm`
--

DROP TABLE IF EXISTS `fin_mbrs_ctmno_inq_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_mbrs_ctmno_inq_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tsdt` date NOT NULL COMMENT '전송일자',
  `tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전문전송시간',
  `trc_no` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '추적번호',
  `ci_no` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT 'CI번호',
  `coop_jnsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴가맹점번호',
  `mbrs_ctmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '멤버스고객번호',
  `msg_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지내용',
  `ci_anscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'CI응답코드',
  `ans_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '응답상세코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_mbrs_ctmno_inq_tlm_00` (`tsdt`,`tlm_ts_hms`,`trc_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='멤버스고객번호조회전문';
