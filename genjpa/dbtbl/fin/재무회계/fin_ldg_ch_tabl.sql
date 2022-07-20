--
-- Table structure for table `fin_ldg_ch_tabl`
--

DROP TABLE IF EXISTS `fin_ldg_ch_tabl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ldg_ch_tabl` (
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `rec_seqno` decimal(5,0) NOT NULL COMMENT '레코드순번',
  `dat_dl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '데이터처리유형코드',
  `tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '테이블명',
  `ba_ky_clmvl_1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값1',
  `ba_ky_clmvl_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값2',
  `ba_ky_clmvl_3` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값3',
  `ba_ky_clmvl_4` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값4',
  `ba_ky_clmvl_5` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값5',
  `ba_ky_clmvl_6` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값6',
  `ba_ky_clmvl_7` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값7',
  `ba_ky_clmvl_8` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값8',
  `ba_ky_clmvl_9` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값9',
  `ba_ky_clmvl_10` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값10',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`reqno`,`rec_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='원장변경테이블';
