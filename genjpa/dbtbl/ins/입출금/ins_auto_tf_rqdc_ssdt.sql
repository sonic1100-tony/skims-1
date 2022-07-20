--
-- Table structure for table `ins_auto_tf_rqdc_ssdt`
--

DROP TABLE IF EXISTS `ins_auto_tf_rqdc_ssdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_auto_tf_rqdc_ssdt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `auto_tf_rqdc_ssno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '자동이체신청서발행번호',
  `plyno_or_lnno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호/대출번호',
  `auto_tf_cg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자동이체요금종류코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `scan_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔대상여부',
  `scan_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔여부',
  `ln_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출증권번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_auto_tf_rqdc_ssdt_00` (`auto_tf_rqdc_ssno`,`plyno_or_lnno`,`auto_tf_cg_kndcd`),
  KEY `idx_ins_auto_tf_rqdc_ssdt_10` (`plyno_or_lnno`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동이체신청서발행상세';
