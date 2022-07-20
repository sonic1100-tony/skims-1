--
-- Table structure for table `com_inr_memo`
--

DROP TABLE IF EXISTS `com_inr_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_inr_memo` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `inp_scr_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '입력화면ID',
  `memo_seqno` decimal(10,0) NOT NULL COMMENT '메모순번',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제목',
  `memo_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`,`inp_scr_id`,`memo_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통합메모';
