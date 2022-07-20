--
-- Table structure for table `str_cscl_aw_py_bj_stf`
--

DROP TABLE IF EXISTS `str_cscl_aw_py_bj_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_cscl_aw_py_bj_stf` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `aw_cr_seqno` decimal(7,0) NOT NULL COMMENT '수당발생순번',
  `aw_ap_ct` decimal(3,0) NOT NULL COMMENT '수당적용횟수',
  `prpn_aw_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '비례수당구분코드',
  `aw_ben_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수당수혜직원번호',
  `aw_ben_stf_bzacd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수당수혜직원영업속성코드',
  `aw_pyamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수당지급금액',
  `aw_pydt` date DEFAULT NULL COMMENT '수당지급일자',
  `bll_rs_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '어음보류대상여부',
  `bll_rs_aw_pydt` date DEFAULT NULL COMMENT '어음보류수당지급일자',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `rpbl_ins_awsam_1` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '책임보험수당합계액1',
  `rpbl_ins_awsam_2` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '책임보험수당합계액2',
  `optn_ins_aw_smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '임의보험수당합계금액',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) DEFAULT NULL COMMENT '담보순번',
  `cvr_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '담보납입회차',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`incm_prm_cr_seqno`,`aw_cr_seqno`,`aw_ap_ct`,`prpn_aw_flgcd`,`aw_ben_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='건별수당지급대상직원';
