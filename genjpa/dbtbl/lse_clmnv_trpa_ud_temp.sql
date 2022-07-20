--
-- Table structure for table `lse_clmnv_trpa_ud_temp`
--

DROP TABLE IF EXISTS `lse_clmnv_trpa_ud_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clmnv_trpa_ud_temp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `trmt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료구분코드',
  `trmt_spc_seqno` decimal(5,0) NOT NULL COMMENT '진료내역순번',
  `trmt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료항목코드',
  `trpa_ud_rgt_seqno` decimal(5,0) NOT NULL COMMENT '진료비심사등록순번',
  `requ_seq` decimal(3,0) NOT NULL COMMENT '의뢰회차',
  `slr_udamt` decimal(17,2) DEFAULT NULL COMMENT '급여심사금액',
  `nsly_udamt` decimal(17,2) DEFAULT NULL COMMENT '비급여심사금액',
  `trpa_udamt` decimal(17,2) DEFAULT NULL COMMENT '진료비심사금액',
  `itmnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목명',
  `trpa_ud_bsc_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비심사근거내용',
  `lkpvn_amt` decimal(17,2) DEFAULT NULL COMMENT '누수방지금액',
  `fnl_lkpvn_amt` decimal(17,2) DEFAULT NULL COMMENT '최종누수방지금액',
  `trpa_ud_dcn_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비심사확정사유코드',
  `trpa_ud_dcn_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비심사확정사유',
  `trpa_ud_impr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비심사불가여부',
  `itmcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clmnv_trpa_ud_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`clm_nv_seqno`,`trmt_flgcd`,`trmt_spc_seqno`,`trmt_itcd`,`trpa_ud_rgt_seqno`,`requ_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고조사진료비심사';
