--
-- Table structure for table `str_sfrgl_chk_it_slcvl_gp`
--

DROP TABLE IF EXISTS `str_sfrgl_chk_it_slcvl_gp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_sfrgl_chk_it_slcvl_gp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `slcvl_gpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '선택값그룹번호',
  `slcvl_gpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '선택값그룹명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_sfrgl_chk_it_slcvl_gp_00` (`slcvl_gpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자율규제점검항목선택값그룹';
