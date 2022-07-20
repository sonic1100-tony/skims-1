--
-- Table structure for table `cus_cnn_ply`
--

DROP TABLE IF EXISTS `cus_cnn_ply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_cnn_ply` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `prnot_itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '출력물품목코드',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `isno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '발급번호',
  `cnn_plyno_or_lnno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '관련증권번호/대출번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '고객번호',
  `hngl_ctmnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글고객명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_cnn_ply_00` (`prnot_itmcd`,`rqdt`,`isno`,`cnn_plyno_or_lnno`,`ctmno`),
  KEY `idx_cus_cnn_ply_01` (`cnn_plyno_or_lnno`,`prnot_itmcd`,`rqdt`,`isno`)
) ENGINE=InnoDB AUTO_INCREMENT=811 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='관련증권';
