--
-- Table structure for table `cus_ctm_info_ch_log`
--

DROP TABLE IF EXISTS `cus_ctm_info_ch_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_info_ch_log` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ch_dlno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '변경처리번호',
  `ch_dthms` datetime DEFAULT NULL COMMENT '변경일시',
  `chps_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경자아이디',
  `ch_stf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경직원구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ch_rs_mtt` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경사유사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_cus_ctm_info_ch_log_00` (`ch_dlno`)
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객정보변경로그';
