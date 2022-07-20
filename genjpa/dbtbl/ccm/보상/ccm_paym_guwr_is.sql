--
-- Table structure for table `ccm_paym_guwr_is`
--

DROP TABLE IF EXISTS `ccm_paym_guwr_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_paym_guwr_is` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `is_ordr` decimal(5,0) NOT NULL COMMENT '발급순차',
  `is_bjps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상자성명',
  `is_bjps_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상자주민번호',
  `is_bjps_age` decimal(3,0) DEFAULT NULL COMMENT '발급대상자나이',
  `is_bjps_sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상자성별코드',
  `is_bj_hsp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상병원고객번호',
  `isbj_hsp_cpent_seqno` decimal(3,0) DEFAULT NULL COMMENT '발급대상병원협력업체순번',
  `is_bj_hspnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상병원명',
  `ins_chrps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험담당자성명',
  `is_bj_hsp_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상병원전화지역번호',
  `is_bj_hsp_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상병원전화국번',
  `is_bj_hsp_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급대상병원전화일련번호',
  `paym_gu_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지불보증항목코드',
  `paym_guor_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지불보증인직원번호',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `snd_fax_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송팩스구분코드',
  `snd_fax_areno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송팩스지역번호',
  `snd_fax_tno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송팩스국번',
  `snd_fax_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송팩스일련번호',
  `fax_ts_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팩스전송여부',
  `cmpu_isdt` date DEFAULT NULL COMMENT '전산발급일자',
  `cmpu_is_seqno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전산발급순번',
  `is_pth_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급경로구분코드',
  `is_rq_pth_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급요청경로구분코드',
  `is_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급상태코드',
  `is_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급유형구분코드',
  `is_rq_dthms` datetime DEFAULT NULL COMMENT '발급요청일시',
  `is_cnf_dthms` datetime DEFAULT NULL COMMENT '발급확인일시',
  `rq_hsp_orgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청병원기관코드',
  `paym_gu_rq_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지불보증요청년월',
  `paym_gu_rq_seqno` decimal(7,0) DEFAULT NULL COMMENT '지불보증요청순번',
  `cmp_paym_gu_nddt` date DEFAULT NULL COMMENT '보상지불보증만료일자',
  `paym_gu_trmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지불보증기간코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_paym_guwr_is_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`is_ordr`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지불보증서발급';
