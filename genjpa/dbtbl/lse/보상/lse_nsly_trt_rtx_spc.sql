--
-- Table structure for table `lse_nsly_trt_rtx_spc`
--

DROP TABLE IF EXISTS `lse_nsly_trt_rtx_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_nsly_trt_rtx_spc` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `trmt_seqno` decimal(20,0) NOT NULL COMMENT '진료순번',
  `trmt_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료항목코드',
  `dtspc_rgt_seqno` decimal(5,0) NOT NULL COMMENT '세부내역등록순번',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자고객번호',
  `nsly_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '비급여구분코드',
  `relpc_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '관계자고객번호',
  `rmdy_dt` date NOT NULL COMMENT '치료일자',
  `emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구금액',
  `appr_ct` decimal(4,0) NOT NULL DEFAULT '0' COMMENT '인정횟수',
  `uiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '공제금액',
  `mdamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '조정금액',
  `tmspr_cpamt` decimal(17,5) NOT NULL DEFAULT '0.00000' COMMENT '회당보상금액',
  `vald_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유효여부',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`trmt_seqno`,`trmt_itcd`,`dtspc_rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='비급여특약영수증내역';
