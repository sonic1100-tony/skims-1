--
-- Table structure for table `ins_dgn_requ`
--

DROP TABLE IF EXISTS `ins_dgn_requ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dgn_requ` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `requ_seqno` decimal(5,0) NOT NULL COMMENT '의뢰순번',
  `vald_requ_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효의뢰여부',
  `nrdps_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자주민번호',
  `nrdps_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자성명',
  `dgn_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진단종류코드',
  `dgamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '진단금액',
  `dgn_vrf_rq_mtt` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진단검증요구사항',
  `trs_wrk_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '송신작업여부',
  `trs_wrkdt` date DEFAULT NULL COMMENT '송신작업일자',
  `rcv_wrk_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '수신작업여부',
  `rcv_wrkdt` date DEFAULT NULL COMMENT '수신작업일자',
  `mdc_are_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검진지역구분코드',
  `mdc_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검진지역코드',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `cfmdt_1` date DEFAULT NULL COMMENT '확약일자1',
  `cfmdt_2` date DEFAULT NULL COMMENT '확약일자2',
  `vis_mdcdt` date DEFAULT NULL COMMENT '방문검진일자',
  `cpldt` date DEFAULT NULL COMMENT '완료일자',
  `ccldt` date DEFAULT NULL COMMENT '취소일자',
  `absc_ry` decimal(2,0) DEFAULT NULL COMMENT '부재회수',
  `mdc_cs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '검진비용',
  `ccl_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소사유코드',
  `dgn_org_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '진단기관고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '협력업체순번',
  `risp_perdt` date DEFAULT NULL COMMENT '수검기한일자',
  `hsp_specd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원종별코드',
  `mdc_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검진병원명',
  `mdc_arenm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검진지역명',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `rgtr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록자직원번호',
  `rgtr_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록자의견',
  `ref_udno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참조심사번호',
  `ref_ndv_ud_seqno` decimal(5,0) DEFAULT NULL COMMENT '참조개별심사순번',
  `ref_requ_seqno` decimal(5,0) DEFAULT NULL COMMENT '참조의뢰순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dgn_requ_00` (`udno`,`ndv_ud_seqno`,`requ_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='진단의뢰';
