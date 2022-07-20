--
-- Table structure for table `ins_cr_ad_info`
--

DROP TABLE IF EXISTS `ins_cr_ad_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_ad_info` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `hndps_rgt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '장애인등록여부',
  `hndps_ins_strdt` date DEFAULT NULL COMMENT '장애인보험시작일자',
  `hndps_ins_nddt` date DEFAULT NULL COMMENT '장애인보험종료일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`nds_ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약부가정보';
