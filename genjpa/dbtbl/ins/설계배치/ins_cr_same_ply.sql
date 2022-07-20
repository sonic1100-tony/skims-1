--
-- Table structure for table `ins_cr_same_ply`
--

DROP TABLE IF EXISTS `ins_cr_same_ply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_same_ply` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `same_ply_gpno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '동일증권그룹번호',
  `plyno_or_plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호/설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `same_ply_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '동일증권대상구분코드',
  `same_ply_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일증권상태코드',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_same_ply_00` (`same_ply_gpno`,`plyno_or_plno`,`cgaf_ch_seqno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차동일증권';
