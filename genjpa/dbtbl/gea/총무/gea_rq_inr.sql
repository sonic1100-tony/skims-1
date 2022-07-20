--
-- Table structure for table `gea_rq_inr`
--

DROP TABLE IF EXISTS `gea_rq_inr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rq_inr` (
  `rqdt` date NOT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `rq_org_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신청기관구분코드',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '신청기관코드',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '신청직원번호',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `us_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '사용기관코드',
  `ap_cplt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '승인완료여부',
  `rq_rs` varchar(1500) COLLATE utf8mb4_bin NOT NULL COMMENT '신청사유',
  `rq_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신청상태코드',
  `prv_bsns_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재업무유형코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `nxt_stm_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '다음결제직원번호',
  `nxt_prv_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '다음결재기관코드',
  `bsns_adx_file_dscno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무첨부파일식별번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rqdt`,`rq_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신청통합';
