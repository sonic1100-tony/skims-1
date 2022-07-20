--
-- Table structure for table `ins_lap_ntc_ob`
--

DROP TABLE IF EXISTS `ins_lap_ntc_ob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_lap_ntc_ob` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ntclt_snd_mdmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '안내장발송매체코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `snd_seq` decimal(3,0) NOT NULL COMMENT '발송회차',
  `relpc_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자유형코드',
  `isno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급번호',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약상태코드',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `lapdt` date DEFAULT NULL COMMENT '실효일자',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종납입년월',
  `fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '최종납입회차',
  `t1_prm` decimal(15,0) DEFAULT NULL COMMENT '1회보험료',
  `cmpr_ntc_plyno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비교안내증권번호',
  `ntc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내직원번호',
  `ctm_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객전화번호',
  `onw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신구주소구분코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `dpc_dthms` datetime DEFAULT NULL COMMENT '발신일시',
  `rcv_dthms` datetime DEFAULT NULL COMMENT '수신일시',
  `rgsno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등기번호',
  `lap_ntc_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실효안내결과코드',
  `fnl_ntc_dt` date DEFAULT NULL COMMENT '최종안내일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_lap_ntc_ob_00` (`cls_yymm`,`ntclt_snd_mdmcd`,`plyno`,`ctmno`,`snd_seq`),
  KEY `idx_ins_lap_ntc_ob_10` (`isno`),
  KEY `idx_ins_lap_ntc_ob_11` (`plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=849 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실효안내대상';
