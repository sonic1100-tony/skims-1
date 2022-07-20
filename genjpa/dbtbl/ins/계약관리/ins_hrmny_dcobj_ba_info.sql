--
-- Table structure for table `ins_hrmny_dcobj_ba_info`
--

DROP TABLE IF EXISTS `ins_hrmny_dcobj_ba_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_hrmny_dcobj_ba_info` (
  `objno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '물건번호',
  `spcl_bld_objnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특수건물물건명',
  `spcl_bld_lctn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특수건물소재지',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`objno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화협할인물건기본정보';
