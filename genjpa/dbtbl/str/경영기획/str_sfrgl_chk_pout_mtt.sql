--
-- Table structure for table `str_sfrgl_chk_pout_mtt`
--

DROP TABLE IF EXISTS `str_sfrgl_chk_pout_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_sfrgl_chk_pout_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `chk_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '점검년월',
  `sfrgl_domn_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자율규제영역분류코드',
  `chk_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '점검기관코드',
  `chk_seq` decimal(5,0) NOT NULL COMMENT '점검회차',
  `sfrgl_chk_it_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자율규제점검항목분류코드',
  `pout_mtt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항유무',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_sfrgl_chk_pout_mtt_00` (`chk_yymm`,`sfrgl_domn_csfcd`,`chk_orgcd`,`chk_seq`,`sfrgl_chk_it_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자율규제점검특이사항';
