--
-- Table structure for table `gea_prts_rq_adm`
--

DROP TABLE IF EXISTS `gea_prts_rq_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_prts_rq_adm` (
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) NOT NULL COMMENT '신청내역순번',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청기관코드',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청직원번호',
  `prts_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인쇄물신청구분코드',
  `itmcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목코드',
  `prt_entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인쇄업체고객번호',
  `prts_stock_qant` decimal(10,0) DEFAULT NULL COMMENT '인쇄물재고수량',
  `supt_rq_qant` decimal(7,0) DEFAULT NULL COMMENT '지원신청수량',
  `supt_md_qant` decimal(7,0) DEFAULT NULL COMMENT '지원조정수량',
  `supt_dcn_qant` decimal(7,0) DEFAULT NULL COMMENT '지원확정수량',
  `snddt` date DEFAULT NULL COMMENT '발송일자',
  `snd_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송업체명',
  `invc_no` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송장번호',
  `sndpl_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송지우편번호',
  `sndpl_ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송지기본주소',
  `sndpl_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송지상세주소',
  `sndpl_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송지전화지역번호',
  `sndpl_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송지전화국번',
  `sndpl_tlsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송지전화일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqdt`,`rq_seqno`,`rq_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인쇄물신청관리';
