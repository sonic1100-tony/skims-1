--
-- Table structure for table `ins_dvpns_rpbl_rcrmt`
--

DROP TABLE IF EXISTS `ins_dvpns_rpbl_rcrmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_rpbl_rcrmt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cr_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약자료구분코드',
  `da_wrtdt` date NOT NULL COMMENT '자료작성일자',
  `dvpns_da_seqno` decimal(10,0) NOT NULL COMMENT '개발원자료순번',
  `dvpns_ins_cmpcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원보험회사코드',
  `dvpns_ikdcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원보종코드',
  `cr_yr` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '계약년도',
  `dvpns_crano` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원계약번호',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `cr_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량차대번호',
  `cr_ts_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약전송자료구분코드',
  `cr_da_ndscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자료배서코드',
  `bdin1_ins_st` date DEFAULT NULL COMMENT '대인1보험시기',
  `bdin1_ins_clstr` date DEFAULT NULL COMMENT '대인1보험종기',
  `sep_ct` decimal(2,0) DEFAULT NULL COMMENT '분할횟수',
  `bdin1_pym_ct` decimal(2,0) DEFAULT NULL COMMENT '대인1납입횟수',
  `acm_prm` decimal(15,0) DEFAULT NULL COMMENT '누적보험료',
  `pym_prm` decimal(17,2) DEFAULT NULL COMMENT '납입보험료',
  `ps_ndstn_shamt` decimal(17,5) DEFAULT NULL COMMENT '보유불분명분담금액',
  `shr_amt_rt_vlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분담금요율값코드',
  `nds_stdt` date DEFAULT NULL COMMENT '배서기준일자',
  `da_dl_dthms` datetime DEFAULT NULL COMMENT '자료처리일시',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감년월',
  `ercd_1` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류코드1',
  `ercd_2` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류코드2',
  `ercd_3` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류코드3',
  `erct` decimal(7,0) DEFAULT NULL COMMENT '오류건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_rpbl_rcrmt_00` (`cr_da_flgcd`,`da_wrtdt`,`dvpns_da_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원책임계약사항';
