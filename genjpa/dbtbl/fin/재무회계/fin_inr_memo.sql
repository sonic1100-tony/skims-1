--
-- Table structure for table `fin_inr_memo`
--

DROP TABLE IF EXISTS `fin_inr_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_inr_memo` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `memo_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '메모번호',
  `memo_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '메모대상구분코드',
  `ba_ky_clmvl_1` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '기본키컬럼값1',
  `ba_ky_clmvl_2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값2',
  `ba_ky_clmvl_3` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값3',
  `ba_ky_clmvl_4` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값4',
  `ba_ky_clmvl_5` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본키컬럼값5',
  `fnl_wrt_dthms` datetime NOT NULL COMMENT '최종작성일시',
  `fnl_wrter_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '최종작성자직원번호',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_inr_memo_00` (`memo_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통합메모';
