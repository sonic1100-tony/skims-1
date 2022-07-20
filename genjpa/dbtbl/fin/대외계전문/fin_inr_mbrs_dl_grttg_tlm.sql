--
-- Table structure for table `fin_inr_mbrs_dl_grttg_tlm`
--

DROP TABLE IF EXISTS `fin_inr_mbrs_dl_grttg_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_inr_mbrs_dl_grttg_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `apdt` date NOT NULL COMMENT '승인일자',
  `apno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '승인번호',
  `deldt` date NOT NULL COMMENT '거래일자',
  `dl_hms` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래시각',
  `offc_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '점포번호',
  `coop_jnsno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '제휴가맹점번호',
  `lpnt_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래구분코드',
  `mbrs_dl_rq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '멤버스거래요청구분코드',
  `lpnt_dl_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래사유코드',
  `ap_rq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '승인요청구분코드',
  `crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '카드번호',
  `pnt_ctmno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '포인트고객번호',
  `lpnt_ctm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트고객구분코드',
  `afc_apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴사승인번호',
  `stm_crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제카드번호',
  `pnt_cal_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '포인트계산방법코드',
  `t_slamt_rq_pnt_num` decimal(15,0) NOT NULL COMMENT '총매출금액요청포인트수',
  `cr_ccl_pnt_num` decimal(15,0) NOT NULL COMMENT '발생취소포인트수',
  `event_cr_ccl_pnt_num` decimal(15,0) NOT NULL COMMENT '이벤트발생취소포인트수',
  `org_dl_info_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원거래정보구분코드',
  `org_dl_apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원거래승인번호',
  `org_deldt` date DEFAULT NULL COMMENT '원거래일자',
  `trc_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추적번호',
  `tmmno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '전문번호',
  `orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관코드',
  `dl_grttg_anscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래대사응답코드',
  `ap_hms` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '승인시각',
  `mbno` bigint(20) unsigned DEFAULT NULL COMMENT '회원번호',
  `fllr_vl` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '필러값',
  `stdt` date DEFAULT NULL COMMENT '기준일자',
  `sno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일련번호',
  `file_in_seqno` decimal(10,0) DEFAULT NULL COMMENT '파일내순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_inr_mbrs_dl_grttg_tlm_00` (`apdt`,`apno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통합멤버스거래대사전문';
