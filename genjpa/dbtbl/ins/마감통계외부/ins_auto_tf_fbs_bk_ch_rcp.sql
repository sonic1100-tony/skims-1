--
-- Table structure for table `ins_auto_tf_fbs_bk_ch_rcp`
--

DROP TABLE IF EXISTS `ins_auto_tf_fbs_bk_ch_rcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_auto_tf_fbs_bk_ch_rcp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `tf_dl_metcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체처리방식코드',
  `chbf_bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '변경전은행코드',
  `chbf_fbs_us_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '변경전FBS이용기관코드',
  `dl_seqno` decimal(5,0) NOT NULL COMMENT '처리순번',
  `fbs_bk_rcp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'FBS은행접수구분코드',
  `rq_dthms` datetime NOT NULL COMMENT '신청일시',
  `fbs_dpsr_dscno_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FBS예금주식별번호종류코드',
  `dpsr_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '예금주식별번호',
  `chbf_sbd_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전하위기관코드',
  `chbf_pyr_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '변경전납부자번호',
  `chbf_actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '변경전계좌번호',
  `chaf_actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '변경후계좌번호',
  `chaf_bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '변경후은행코드',
  `chaf_fbs_us_orgcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후FBS이용기관코드',
  `chaf_sbd_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후하위기관코드',
  `chaf_pyr_no` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후납부자번호',
  `us_org_rcp_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이용기관접수응답코드',
  `auto_tf_ch_rcpdt` date DEFAULT NULL COMMENT '자동이체변경접수일자',
  `tf_srv_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체서비스종류코드',
  `fbs_nw_dl_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FBS신규처리응답코드',
  `nw_dldt` date DEFAULT NULL COMMENT '신규처리일자',
  `fbs_cn_dl_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'FBS해지처리응답코드',
  `cn_dldt` date DEFAULT NULL COMMENT '해지처리일자',
  `ch_nml_dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경정상처리여부',
  `ch_dl_dthms` datetime DEFAULT NULL COMMENT '변경처리일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_auto_tf_fbs_bk_ch_rcp_00` (`stdt`,`tf_dl_metcd`,`chbf_bkcd`,`chbf_fbs_us_orgcd`,`dl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동이체FBS은행변경접수';
