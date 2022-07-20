--
-- Table structure for table `fin_cnn_ins_ply_adm`
--

DROP TABLE IF EXISTS `fin_cnn_ins_ply_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cnn_ins_ply_adm` (
  `py_stno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '지급정지번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `img_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지파일KEY',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`py_stno`,`plyno`),
  KEY `idx_fin_cnn_ins_ply_adm_11` (`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='관련보험증권관리';
