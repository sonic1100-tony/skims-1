--
-- Table structure for table `com_sep_keep`
--

DROP TABLE IF EXISTS `com_sep_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_sep_keep` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `wrkdt` date NOT NULL COMMENT '작업일자',
  `ky_itvl` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '키항목값',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `spkep_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분리보관업무구분코드',
  `o2_upld_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차업로드여부',
  `o2_upld_wrkdt` date DEFAULT NULL COMMENT '2차업로드작업일자',
  `ky_ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '키삭제여부',
  `ky_wrkdt` date DEFAULT NULL COMMENT '키작업일자',
  `ctmno_ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호삭제여부',
  `ctmno_wrkdt` date DEFAULT NULL COMMENT '고객번호작업일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=16590 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개인정보분리보관';
