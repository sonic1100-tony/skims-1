--
-- Table structure for table `ins_auto_tf_nwdrc_bdl_snd`
--

DROP TABLE IF EXISTS `ins_auto_tf_nwdrc_bdl_snd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_auto_tf_nwdrc_bdl_snd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `snddt` date NOT NULL COMMENT '발송일자',
  `bdl_snd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일괄발송구분코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `tfdt` date NOT NULL COMMENT '이체일자',
  `nxt_tfdt` date DEFAULT NULL COMMENT '다음이체일자',
  `cm_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수금방법코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_auto_tf_nwdrc_bdl_snd_00` (`snddt`,`bdl_snd_flgcd`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동이체미출금일괄발송';
