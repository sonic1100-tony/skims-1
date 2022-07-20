--
-- Table structure for table `ins_hpcar_srv_sms_rq`
--

DROP TABLE IF EXISTS `ins_hpcar_srv_sms_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_hpcar_srv_sms_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dher_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급자직원번호',
  `trrv_sno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '송수신일련번호',
  `fnl_st_rgt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종상태등록여부',
  `sms_rq_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS신청상태구분코드',
  `snd_st_str_hms` decimal(4,0) DEFAULT NULL COMMENT '발송기준시작시간',
  `snd_st_nd_hms` decimal(4,0) DEFAULT NULL COMMENT '발송기준종료시간',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_hpcar_srv_sms_rq_00` (`dher_stfno`,`trrv_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='해피카서비스SMS신청';
