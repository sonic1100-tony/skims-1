--
-- Table structure for table `ins_hgrk_grp_bj_cr`
--

DROP TABLE IF EXISTS `ins_hgrk_grp_bj_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_hgrk_grp_bj_cr` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자식별번호',
  `hgrk_grp_rgtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '고위험군등록코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `sno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일련번호',
  `stdt` date DEFAULT NULL COMMENT '기준일자',
  `cc_strdt` date DEFAULT NULL COMMENT '산출시작일자',
  `cc_nddt` date DEFAULT NULL COMMENT '산출종료일자',
  `clmct` decimal(7,0) DEFAULT NULL COMMENT '사고건수',
  `t_hsp_days` decimal(5,0) DEFAULT NULL COMMENT '총입원일수',
  `pyamt` decimal(17,2) DEFAULT '0.00' COMMENT '지급금액',
  `ntc_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고지등급코드',
  `rk_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험등급코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`nrdps_dscno`,`hgrk_grp_rgtcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고위험군대상계약';
