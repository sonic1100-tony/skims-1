--
-- Table structure for table `ins_pl_rt_batch`
--

DROP TABLE IF EXISTS `ins_pl_rt_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_rt_batch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rtno` varchar(18) COLLATE utf8mb4_bin NOT NULL COMMENT '요율번호',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `rt` decimal(19,7) NOT NULL DEFAULT '0.0000000' COMMENT '요율',
  `rt_unt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율단위구분코드',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) DEFAULT '0' COMMENT '발행후변경순번',
  `relpc_oj_seqno` decimal(10,0) DEFAULT NULL COMMENT '관계자목적물순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) DEFAULT NULL COMMENT '담보순번',
  `rk_tpcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험유형코드',
  `re_rnkno` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재단계번호',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_pl_rt_batch_00` (`rtno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계요율_배치';
