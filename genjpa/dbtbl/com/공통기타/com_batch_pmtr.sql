--
-- Table structure for table `com_batch_pmtr`
--

DROP TABLE IF EXISTS `com_batch_pmtr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_pmtr` (
  `wrk_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '작업ID',
  `wrk_seqno` decimal(5,0) NOT NULL COMMENT '작업순번',
  `wrk_gp_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '작업그룹ID',
  `wrk_xpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업설명',
  `pmtr_1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터1',
  `pmtr_1_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터1설명',
  `pmtr_2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터2',
  `pmtr_2_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터2설명',
  `pmtr_3` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터3',
  `pmtr_3_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터3설명',
  `pmtr_4` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터4',
  `pmtr_4_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터4설명',
  `pmtr_5` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터5',
  `pmtr_5_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터5설명',
  `pmtr_6` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터6',
  `pmtr_6_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터6설명',
  `pmtr_7` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터7',
  `pmtr_7_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터7설명',
  `pmtr_8` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터8',
  `pmtr_8_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터8설명',
  `pmtr_9` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터9',
  `pmtr_9_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터9설명',
  `pmtr_10` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터10',
  `pmtr_10_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터10설명',
  `pmtr_11` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터11',
  `pmtr_11_xpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터11설명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`wrk_id`,`wrk_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치파라미터';
