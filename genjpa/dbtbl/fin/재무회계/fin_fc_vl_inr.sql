--
-- Table structure for table `fin_fc_vl_inr`
--

DROP TABLE IF EXISTS `fin_fc_vl_inr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_fc_vl_inr` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `fc_vl_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '외화평가대상구분코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장번호',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `stdt` date NOT NULL COMMENT '기준일자',
  `dltfp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처구분코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화금액',
  `woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화금액',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `fc_vlamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '외화평가금액',
  `fx_pldoq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외환차손익구분코드',
  `fx_pqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '외환차손익금액',
  `fc_vl_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외화평가주기코드',
  `fc_vlldg_rflt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외화평가원장반영여부',
  `ldg_rflt_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장반영대상여부',
  `da_crtdt` date NOT NULL COMMENT '자료생성일자',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`ntacc_cd`,`fc_vl_bj_flgcd`,`ldgno`,`mncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외화평가통합';
