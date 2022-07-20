--
-- Table structure for table `ins_nexca_cls_cr`
--

DROP TABLE IF EXISTS `ins_nexca_cls_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nexca_cls_cr` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `prm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료구분코드',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `nexca_prm` decimal(15,0) DEFAULT NULL COMMENT '미정산보험료',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `nds_note` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서비고',
  `ndsdt` date DEFAULT NULL COMMENT '배서일자',
  `bknm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행명',
  `dpsnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주명',
  `actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호',
  `py_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급계좌번호',
  `pr_es_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질권설정여부',
  `spc_acc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별계정여부',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자직원번호',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `nd_rs_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미처리사유내용',
  `nd_rs_inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '미처리사유입력직원번호',
  `nd_rs_inp_dthms` datetime DEFAULT NULL COMMENT '미처리사유입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`plyno`,`incm_prm_cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='미정산월별계약';
