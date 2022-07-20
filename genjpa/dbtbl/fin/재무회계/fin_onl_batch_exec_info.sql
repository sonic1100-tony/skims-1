--
-- Table structure for table `fin_onl_batch_exec_info`
--

DROP TABLE IF EXISTS `fin_onl_batch_exec_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_onl_batch_exec_info` (
  `trscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'TRANSACTION코드',
  `stdt` date NOT NULL COMMENT '기준일자',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `wrk_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '작업상태구분코드',
  `wrk_str_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작업시작일시',
  `wrk_nd_dthms` datetime DEFAULT NULL COMMENT '작업종료일시',
  `rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결과내용',
  `pmtr_1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터1',
  `pmtr_2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터2',
  `pmtr_3` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터3',
  `pmtr_4` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터4',
  `pmtr_5` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터5',
  `pmtr_6` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터6',
  `pmtr_7` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터7',
  `pmtr_8` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터8',
  `pmtr_9` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터9',
  `pmtr_10` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터10',
  `out_file_1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력파일1',
  `out_file_2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력파일2',
  `out_file_3` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력파일3',
  `out_file_info_1` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력파일정보1',
  `out_file_info_2` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력파일정보2',
  `out_file_info_3` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력파일정보3',
  `batch_wrk_prgrt` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '배치작업진도율',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`trscd`,`stdt`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='온라인배치수행정보';
