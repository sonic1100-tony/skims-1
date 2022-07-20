--
-- Table structure for table `ins_pl_cr_acsr_batch`
--

DROP TABLE IF EXISTS `ins_pl_cr_acsr_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cr_acsr_batch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `acsr_mcheq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '부속품기계장치구분코드',
  `acsr_mchcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '부속품기계장치코드',
  `oldbl_seqno` decimal(5,0) NOT NULL COMMENT '구중복순번',
  `acsr_mchnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부속품기계장치명',
  `acsr_mcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부속품기계장치가액',
  `ba_bag_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본장착여부',
  `acsr_mcheq_no` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부속품기계장치번호',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드',
  `ba_bag_xcpt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본장착제외여부',
  `opedt` date DEFAULT NULL COMMENT '시행일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_pl_cr_acsr_batch_00` (`plno`,`cgaf_ch_seqno`,`oj_seqno`,`acsr_mcheq_flgcd`,`acsr_mchcd`,`oldbl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계차량부속품기계장치가액_배치';
