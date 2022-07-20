--
-- Table structure for table `ins_bdl_ud_xcpt`
--

DROP TABLE IF EXISTS `ins_bdl_ud_xcpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bdl_ud_xcpt` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `dher_apyn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '취급자적용여부',
  `udrtk_vltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수위배코드',
  `ins_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험군코드',
  `ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인여부',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `ctm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객유형코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `ctm_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호구분코드',
  `iq_xcpt_rq_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심의예외요청사유',
  `ad_cnd_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부가조건내용',
  `itmcd` varchar(15) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목코드',
  `itmnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '품목명',
  `op_crano` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OP계약번호',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctmno`,`ins_imcd`,`dher_apyn`,`udrtk_vltcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일괄심사예외';
