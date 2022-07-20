--
-- Table structure for table `ins_dcl_info_file_adm`
--

DROP TABLE IF EXISTS `ins_dcl_info_file_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dcl_info_file_adm` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `file_seqno` decimal(5,0) NOT NULL COMMENT '파일순번',
  `file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일경로',
  `finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일명',
  `srvr_finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서버파일명',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`seqno`,`file_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공시정보파일관리';
