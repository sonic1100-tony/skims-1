--
-- Table structure for table `ins_pl_oj_bdlcm_lm`
--

DROP TABLE IF EXISTS `ins_pl_oj_bdlcm_lm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_oj_bdlcm_lm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `oj_bdlno` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '목적물일괄번호',
  `oj_bdl_seqno` decimal(5,0) NOT NULL COMMENT '목적물일괄순번',
  `lb_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배상구분코드',
  `cmp_lmamt_untcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상한도금액단위코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `bdl_cmp_lmamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '일괄보상한도액',
  `bdl_self_chamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '일괄자기부담금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_oj_bdlcm_lm_00` (`plno`,`cgaf_ch_seqno`,`oj_bdlno`,`oj_bdl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계목적물일괄보상한도';
