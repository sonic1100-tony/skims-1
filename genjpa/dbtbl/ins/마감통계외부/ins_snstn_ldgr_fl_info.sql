--
-- Table structure for table `ins_snstn_ldgr_fl_info`
--

DROP TABLE IF EXISTS `ins_snstn_ldgr_fl_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_snstn_ldgr_fl_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_seqno` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '전문순번',
  `rgbd_admno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '건축물대장관리번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `rgbd_knd_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건축물대장종류세부코드',
  `mn_atch_flgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주부속구분명',
  `fl_no_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '층번호명',
  `str_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구조명',
  `mn_use_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주용도명',
  `are` decimal(17,2) DEFAULT NULL COMMENT '면적',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_snstn_ldgr_fl_info_00` (`tlm_seqno`,`rgbd_admno`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='건축물대장층정보';
