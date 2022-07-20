--
-- Table structure for table `str_sfrgl_chk_it_slcvl`
--

DROP TABLE IF EXISTS `str_sfrgl_chk_it_slcvl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_sfrgl_chk_it_slcvl` (
  `slcvl_gpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '선택값그룹번호',
  `slcvl_no` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '선택값번호',
  `slcvl_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '선택값명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`slcvl_gpno`,`slcvl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자율규제점검항목선택값';
