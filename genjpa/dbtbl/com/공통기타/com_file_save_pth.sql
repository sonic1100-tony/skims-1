--
-- Table structure for table `com_file_save_pth`
--

DROP TABLE IF EXISTS `com_file_save_pth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_file_save_pth` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bsns_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무대분류코드',
  `bsns_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무중분류코드',
  `dt_pth` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '세부경로',
  `file_key` decimal(20,0) NOT NULL COMMENT '파일KEY',
  `file_key_seqno` decimal(5,0) NOT NULL COMMENT '파일KEY순번',
  `bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무파일KEY',
  `finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일명',
  `elec_dcu_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자문서KEY',
  `elec_dcu_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자문서파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_file_save_pth_00` (`bsns_lclcd`,`bsns_mdccd`,`dt_pth`,`file_key`,`file_key_seqno`),
  KEY `idx_com_file_save_pth_10` (`elec_dcu_file_key`),
  KEY `idx_com_file_save_pth_11` (`bsns_file_key`,`finm`,`inp_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=2011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='파일저장경로';
