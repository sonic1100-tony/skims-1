--
-- Table structure for table `ins_pym_grc_rq`
--

DROP TABLE IF EXISTS `ins_pym_grc_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pym_grc_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `pym_grc_str_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입유예시작년월',
  `pym_grc_nd_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입유예종료년월',
  `sep_py_str_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분할납시작년월',
  `sep_py_nd_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분할납종료년월',
  `sep_pym_ct` decimal(5,0) DEFAULT NULL COMMENT '분할납입횟수',
  `cnldt` date DEFAULT NULL COMMENT '해지일자',
  `cn_dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해지처리직원번호',
  `cn_dl_dthms` datetime DEFAULT NULL COMMENT '해지처리일시',
  `pym_grc_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입유예사유코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pym_grc_rq_00` (`plyno`,`rqdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='납입유예신청';
