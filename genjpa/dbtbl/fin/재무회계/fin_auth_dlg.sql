--
-- Table structure for table `fin_auth_dlg`
--

DROP TABLE IF EXISTS `fin_auth_dlg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_auth_dlg` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `grtps_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '부여자기관코드',
  `grtps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부여자직원번호',
  `vald_strdt` date DEFAULT NULL COMMENT '유효시작일자',
  `vald_nddt` date DEFAULT NULL COMMENT '유효종료일자',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `ers_dthms` datetime DEFAULT NULL COMMENT '삭제일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`,`seqno`,`grtps_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='권한위임';
