--
-- Table structure for table `ins_auto_tf_fbs_bk_cn_rcp`
--

DROP TABLE IF EXISTS `ins_auto_tf_fbs_bk_cn_rcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_auto_tf_fbs_bk_cn_rcp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `tf_dl_metcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체처리방식코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `fbs_us_orgcd` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT 'FBS이용기관코드',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `fbs_bk_rcp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'FBS은행접수구분코드',
  `bk_ldg_apdt` date NOT NULL COMMENT '은행원장적용일자',
  `fbs_dpsr_dscno_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FBS예금주식별번호종류코드',
  `dpsr_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '예금주식별번호',
  `sbd_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '하위기관코드',
  `pyr_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '납부자번호',
  `actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `fbs_bk_cn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'FBS은행해지구분코드',
  `cn_nml_dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '해지정상처리여부',
  `cn_dl_dthms` datetime DEFAULT NULL COMMENT '해지처리일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_auto_tf_fbs_bk_cn_rcp_00` (`stdt`,`tf_dl_metcd`,`bkcd`,`fbs_us_orgcd`,`dl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동이체FBS은행해지접수';
