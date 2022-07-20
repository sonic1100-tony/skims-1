--
-- Table structure for table `ins_seoul_milg_adm`
--

DROP TABLE IF EXISTS `ins_seoul_milg_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_seoul_milg_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `rgt_seqno` decimal(3,0) NOT NULL COMMENT '등록순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '가입여부',
  `isrdt` date DEFAULT NULL COMMENT '가입일자',
  `agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의여부',
  `agmdt` date DEFAULT NULL COMMENT '동의일자',
  `cn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해지여부',
  `cnldt` date DEFAULT NULL COMMENT '해지일자',
  `fnl_chdt` date DEFAULT NULL COMMENT '최종변경일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_seoul_milg_adm_00` (`plno`,`rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='서울시마일리지관리';
