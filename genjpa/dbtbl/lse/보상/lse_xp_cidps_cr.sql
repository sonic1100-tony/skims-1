--
-- Table structure for table `lse_xp_cidps_cr`
--

DROP TABLE IF EXISTS `lse_xp_cidps_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_xp_cidps_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_xp_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '구상예상관리번호',
  `xp_cidps_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '예상피구상자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_xp_cidps_cr_00` (`idm_xp_admno`,`xp_cidps_seqno`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예상피구상자계약';
