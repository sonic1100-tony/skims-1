--
-- Table structure for table `lse_ppty_ud_dshs_ntvlt_dt`
--

DROP TABLE IF EXISTS `lse_ppty_ud_dshs_ntvlt_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ppty_ud_dshs_ntvlt_dt` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `ppty_ud_rqsno` decimal(3,0) NOT NULL COMMENT '적부심사요청순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `rgt_seqno` decimal(3,0) NOT NULL COMMENT '등록순번',
  `hspcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '병원코드',
  `dgncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단코드',
  `dgncd_sno` decimal(5,0) NOT NULL COMMENT '진단코드일련번호',
  `trmt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료구분코드',
  `rmdy_strdt` date DEFAULT NULL COMMENT '치료시작일자',
  `rmdy_nddt` date DEFAULT NULL COMMENT '치료종료일자',
  `rmdy_days` decimal(5,0) DEFAULT NULL COMMENT '치료일수',
  `appr_rmdy_days` decimal(5,0) DEFAULT NULL COMMENT '인정치료일수',
  `ntc_dty_vlt_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고지의무위반내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`ppty_ud_rqsno`,`plyno`,`rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적부심사병력고지위반상세';
