--
-- Table structure for table `com_smfl_ofplc`
--

DROP TABLE IF EXISTS `com_smfl_ofplc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_smfl_ofplc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `batch_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치관리번호',
  `file_seqno` decimal(5,0) NOT NULL COMMENT '파일순번',
  `file_use_seqno` decimal(5,0) NOT NULL COMMENT '파일용도순번',
  `smfl_ofplc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SAM파일제공처구분코드',
  `smfl_ofplc_nm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일제공처명',
  `smfl_of_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일제공방법코드',
  `smfl_keep_trm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일보관기간',
  `smfl_keep_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일보관사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_smfl_ofplc_00` (`batch_admno`,`file_seqno`,`file_use_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SAM파일제공처';
