--
-- Table structure for table `ins_xol_rst_cnd`
--

DROP TABLE IF EXISTS `ins_xol_rst_cnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_xol_rst_cnd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nprp_lyrno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '비비례LAYER번호',
  `rst_seqno` decimal(5,0) NOT NULL COMMENT '복원순번',
  `rst_av_ct` decimal(5,0) NOT NULL COMMENT '복원가능횟수',
  `rstrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '복원율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_xol_rst_cnd_00` (`nprp_lyrno`,`rst_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='XOL복원조건';
