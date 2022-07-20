--
-- Table structure for table `ins_tf_ercd`
--

DROP TABLE IF EXISTS `ins_tf_ercd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_tf_ercd` (
  `tf_dl_metcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체처리방식코드',
  `wdcmp_or_vnccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '출금사/VAN사코드',
  `tf_rq_dm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체신청청구구분코드',
  `tf_rq_ercd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체신청오류코드',
  `er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내용',
  `act_er_dlbj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌오류처리대상여부',
  `er_dt_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류상세내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tf_dl_metcd`,`wdcmp_or_vnccd`,`tf_rq_dm_flgcd`,`tf_rq_ercd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='이체오류코드';
