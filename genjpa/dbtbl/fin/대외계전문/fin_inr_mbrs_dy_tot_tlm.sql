--
-- Table structure for table `fin_inr_mbrs_dy_tot_tlm`
--

DROP TABLE IF EXISTS `fin_inr_mbrs_dy_tot_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_inr_mbrs_dy_tot_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `apdt` date NOT NULL COMMENT '승인일자',
  `coop_jnsno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '제휴가맹점번호',
  `offc_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '점포번호',
  `deldt` date NOT NULL COMMENT '거래일자',
  `lpnt_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래구분코드',
  `nmlct` decimal(9,0) NOT NULL COMMENT '정상건수',
  `nml_slamt` decimal(17,2) NOT NULL COMMENT '정상매출금액',
  `dl_pnt_num` decimal(15,0) NOT NULL COMMENT '거래포인트수',
  `ccl_ct` decimal(9,0) NOT NULL COMMENT '취소건수',
  `ccl_slamt` decimal(15,0) NOT NULL COMMENT '취소매출금액',
  `ccl_pnt_num` decimal(15,0) NOT NULL COMMENT '취소포인트수',
  `us_netwk_cclct` decimal(10,0) NOT NULL COMMENT '사용망취소건수',
  `us_netwk_ccl_slamt` decimal(17,2) NOT NULL COMMENT '사용망취소매출금액',
  `us_netwk_ccl_pnt_num` decimal(15,0) NOT NULL COMMENT '사용망취소포인트수',
  `ccl_netwk_cclct` decimal(10,0) NOT NULL COMMENT '취소망취소건수',
  `ccl_netwk_ccl_slamt` decimal(17,2) NOT NULL COMMENT '취소망취소매출금액',
  `ccl_netwk_ccl_pnt_num` decimal(15,0) NOT NULL COMMENT '취소망취소포인트수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_inr_mbrs_dy_tot_tlm_00` (`apdt`,`coop_jnsno`,`offc_no`,`deldt`,`lpnt_dl_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통합멤버스일집계전문';
