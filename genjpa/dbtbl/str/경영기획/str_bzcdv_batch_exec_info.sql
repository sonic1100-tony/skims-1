--
-- Table structure for table `str_bzcdv_batch_exec_info`
--

DROP TABLE IF EXISTS `str_bzcdv_batch_exec_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzcdv_batch_exec_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `batch_wrk_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업ID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `batch_wrknm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업명',
  `wrk_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '작업상태구분코드',
  `wrk_str_dthms` datetime NOT NULL COMMENT '작업시작일시',
  `wrk_nd_dthms` datetime DEFAULT NULL COMMENT '작업종료일시',
  `rst_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_bzcdv_batch_exec_info_00` (`batch_wrk_id`,`cls_yymm`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=573 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업비배분배치수행정보';
