--
-- Table structure for table `ins_rir_lq_crr_adm`
--

DROP TABLE IF EXISTS `ins_rir_lq_crr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rir_lq_crr_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `xc_cmp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산회사구분코드',
  `xc_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산대상구분코드',
  `pvl_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '계상년월',
  `rir_lq_sno` decimal(7,0) NOT NULL COMMENT '재보청산일련번호',
  `rir_lq_crr_sno` decimal(3,0) NOT NULL COMMENT '재보청산이력일련번호',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `rir_lq_dscrd_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보청산불일치사유코드',
  `rir_lq_dscrd_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보청산불일치사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rir_lq_crr_adm_00` (`xc_cmp_flgcd`,`xc_bj_flgcd`,`pvl_yymm`,`rir_lq_sno`,`rir_lq_crr_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보청산이력관리';
