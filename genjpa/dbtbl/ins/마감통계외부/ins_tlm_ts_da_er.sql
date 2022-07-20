--
-- Table structure for table `ins_tlm_ts_da_er`
--

DROP TABLE IF EXISTS `ins_tlm_ts_da_er`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_tlm_ts_da_er` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `er_da_rcvdt` date NOT NULL COMMENT '오류자료수신일자',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `eng_tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '영문테이블명',
  `ba_ky_clmvl_1` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '기본키컬럼값1',
  `ba_ky_clmvl_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값2',
  `ba_ky_clmvl_3` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값3',
  `ba_ky_clmvl_4` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값4',
  `ba_ky_clmvl_5` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값5',
  `atr_seqno` decimal(5,0) NOT NULL COMMENT '속성순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_tlm_ts_da_er_00` (`er_da_rcvdt`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전문전송자료오류';
