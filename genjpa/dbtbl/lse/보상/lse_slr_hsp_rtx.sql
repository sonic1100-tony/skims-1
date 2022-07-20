--
-- Table structure for table `lse_slr_hsp_rtx`
--

DROP TABLE IF EXISTS `lse_slr_hsp_rtx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_slr_hsp_rtx` (
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `mdcs_rtx_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료비영수증유형코드',
  `trmt_seqno` decimal(20,0) NOT NULL COMMENT '진료순번',
  `relpc_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자고객번호',
  `trmt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료구분코드',
  `rcpr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요양구분코드',
  `hspcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원코드',
  `spcf_hsp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특정병원구분코드',
  `trmt_sbjcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료과목코드',
  `trmt_strdt` date NOT NULL COMMENT '진료시작일자',
  `trmt_nddt` date NOT NULL COMMENT '진료종료일자',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `slr_self_chamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '급여자기부담금액',
  `slr_tamt_self_chamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '급여전액본인부담금액',
  `slr_md_self_chamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '급여조정본인부담금액',
  `slr_md_tamt_self_chamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '급여조정전액본인부담금액',
  `slr_appr_self_chamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '급여인정본인부담금액',
  `slr_appr_tamt_self_chamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '급여인정전액본인부담금액',
  `mx_spls_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '상한초과금액',
  `mx_xcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '상한제외금액',
  `slr_self_rx_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '급여본인감면액',
  `slr_tamt_self_rx_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '급여전액본인감면액',
  `slr_self_md_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '급여본인조정액',
  `slr_tamt_self_md_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '급여전액본인조정액',
  `vald_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유효여부',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`nrdps_ctmno`,`mdcs_rtx_tpcd`,`trmt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='급여입원영수증';
