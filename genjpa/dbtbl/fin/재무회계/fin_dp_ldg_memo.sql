--
-- Table structure for table `fin_dp_ldg_memo`
--

DROP TABLE IF EXISTS `fin_dp_ldg_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dp_ldg_memo` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dp_ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '예금원장번호',
  `fnl_wrt_dthms` datetime NOT NULL COMMENT '최종작성일시',
  `fnl_wrter_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '최종작성자직원번호',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_dp_ldg_memo_00` (`dp_ldgno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예금원장메모';
