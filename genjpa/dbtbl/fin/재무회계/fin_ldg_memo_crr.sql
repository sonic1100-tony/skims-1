--
-- Table structure for table `fin_ldg_memo_crr`
--

DROP TABLE IF EXISTS `fin_ldg_memo_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ldg_memo_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장종류코드',
  `ldg_memo_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장메모유형코드',
  `ldg_memo_dt_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '원장메모상세유형코드',
  `wrt_dthms` datetime NOT NULL COMMENT '작성일시',
  `wrter_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '작성자직원번호',
  `memo` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '메모',
  `dl_perdt` date DEFAULT NULL COMMENT '처리기한일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_ldg_memo_crr_00` (`ldgno`,`ldg_kndcd`,`ldg_memo_tpcd`,`ldg_memo_dt_tpcd`,`wrt_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='원장메모이력';
