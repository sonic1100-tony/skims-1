--
-- Table structure for table `ins_pl_cvr_nrdps_avage`
--

DROP TABLE IF EXISTS `ins_pl_cvr_nrdps_avage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_cvr_nrdps_avage` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `nrdps_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자구분코드',
  `nrdps_sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자성별코드',
  `avg_age` decimal(3,0) DEFAULT NULL COMMENT '평균연령',
  `psct` decimal(7,0) DEFAULT NULL COMMENT '인원수',
  `gp_is_tp` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '그룹가입유형',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_cvr_nrdps_avage_00` (`plno`,`cgaf_ch_seqno`,`cvrcd`,`cvr_seqno`,`nrdps_flgcd`,`nrdps_sexcd`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계담보피보험자평균연령';
