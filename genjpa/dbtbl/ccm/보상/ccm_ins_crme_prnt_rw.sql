--
-- Table structure for table `ccm_ins_crme_prnt_rw`
--

DROP TABLE IF EXISTS `ccm_ins_crme_prnt_rw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_ins_crme_prnt_rw` (
  `prnt_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '제보접수년월',
  `prnt_rcp_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '제보접수순번',
  `ins_itm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목구분코드',
  `prnt_lnm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보자익명여부',
  `prnt_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보자고객번호',
  `prnt_jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보자직업명',
  `nvr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '조사자직원번호',
  `nvr_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '조사자팀기관코드',
  `prnt_rcp_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보접수방법코드',
  `prnt_rcp_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보접수경로코드',
  `prnt_nv_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보조사유형코드',
  `prnt_swdl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보사기유형코드',
  `prnt_dramt` decimal(15,0) DEFAULT NULL COMMENT '제보편취금액',
  `prnt_rcpdt` date NOT NULL COMMENT '제보접수일자',
  `acdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건명',
  `prnt_tl_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보자전화지역번호',
  `prnt_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보자전화국번',
  `prnt_tl_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보자전화일련번호',
  `fsvs_rcpno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금감원접수번호',
  `acd_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건내용',
  `spcn_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '혐의내용',
  `prnt_rw_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보포상처리상태코드',
  `prnt_nv_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보조사결과코드',
  `prnt_nv_cpldt` date DEFAULT NULL COMMENT '제보조사완료일자',
  `prnt_detc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제보수사여부',
  `prnt_sjtdn_amt` decimal(15,0) DEFAULT NULL COMMENT '제보적발금액',
  `prnt_rcamt` decimal(15,0) DEFAULT NULL COMMENT '제보환수금액',
  `prnt_rwamt` decimal(15,0) DEFAULT NULL COMMENT '제보자포상금액',
  `prnt_rw_amt_pydt` date DEFAULT NULL COMMENT '제보포상금지급일자',
  `intnl_dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내부문서번호',
  `dl_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`prnt_rcp_yymm`,`prnt_rcp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험범죄제보포상';
