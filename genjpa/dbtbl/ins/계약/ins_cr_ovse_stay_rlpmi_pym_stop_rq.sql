--
-- Table structure for table `ins_cr_ovse_stay_rlpmi_pym_stop_rq`
--

DROP TABLE IF EXISTS `ins_cr_ovse_stay_rlpmi_pym_stop_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_ovse_stay_rlpmi_pym_stop_rq` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `relpc_seqno` decimal(10,0) DEFAULT NULL COMMENT '관계자순번',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `rlpmi_pym_stop_rq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '실손납입중지신청구분코드',
  `pym_stop_strdt` date NOT NULL COMMENT '납입중지시작일자',
  `pym_stop_nddt` date DEFAULT NULL COMMENT '납입중지종료일자',
  `rtamt_cr_stdt` date DEFAULT NULL COMMENT '환급금발생기준일자',
  `dprcn_etctr_cnndc_rgt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출국입국관련서류등록구분코드',
  `scan_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스캔업무구분코드',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_cr_ovse_stay_rlpmi_pym_stop_rq_00` (`plyno`,`relpc_seqno`,`nds_ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약해외체류실손납입중지신청';
