--
-- Table structure for table `ccm_lbr_wefr_pbco_tlm`
--

DROP TABLE IF EXISTS `ccm_lbr_wefr_pbco_tlm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lbr_wefr_pbco_tlm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `lbr_wefr_pbco_tlm_trc_no` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '근로복지공단전문추적번호',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `rsm_sex_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민등록성별구분코드',
  `acci_dt` date DEFAULT NULL COMMENT '재해일자',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `rlt_1_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대1차량번호',
  `rlt_2_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대2차량번호',
  `rlt_3_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대3차량번호',
  `ans_rec_ct` decimal(3,0) DEFAULT NULL COMMENT '응답레코드건수',
  `no1_clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번사고담보코드',
  `no1_clm_rcpno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번사고접수번호',
  `no1_nrd_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번피보험차량번호',
  `no2_clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번사고담보코드',
  `no2_clm_rcpno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번사고접수번호',
  `no2_nrd_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번피보험차량번호',
  `no3_clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번사고담보코드',
  `no3_clm_rcpno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번사고접수번호',
  `no3_nrd_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번피보험차량번호',
  `agryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의여부',
  `agre_metd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의방식구분코드',
  `agmdt` date DEFAULT NULL COMMENT '동의일자',
  `lbr_wefr_pbco_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '근로복지공단응답코드',
  `tlm_opndt` date DEFAULT NULL COMMENT '전문개시일자',
  `rcv_tlm_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수신전문내용',
  `trs_tlm_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송신전문내용',
  `no1_rv_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번예비내용',
  `no2_rv_cn` varchar(3000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번예비내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_lbr_wefr_pbco_tlm_00` (`lbr_wefr_pbco_tlm_trc_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='근로복지공단전문';
