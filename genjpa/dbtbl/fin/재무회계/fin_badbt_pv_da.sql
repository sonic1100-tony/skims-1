--
-- Table structure for table `fin_badbt_pv_da`
--

DROP TABLE IF EXISTS `fin_badbt_pv_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_badbt_pv_da` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `da_seqno` decimal(7,0) NOT NULL COMMENT '자료순번',
  `stdt` date NOT NULL COMMENT '기준일자',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반특별구분코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `trm_mc` decimal(5,0) NOT NULL COMMENT '기간월수',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `fc_poamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화계상금액',
  `woncr_poamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화계상금액',
  `dltfp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대처구분코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상대처코드',
  `rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험자코드',
  `badbt_pvamt` decimal(17,7) NOT NULL DEFAULT '0.0000000' COMMENT '대손충당금액',
  `cr_badbt_stncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생대손기준코드',
  `mdf_badbt_stncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수정대손기준코드',
  `badbt_pvamt_curt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '대손충당금적립율',
  `badbt_dp_woncr_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대손상각원화금액',
  `badbt_dp_fc_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '대손상각외화금액',
  `badbt_dp_dldt` date DEFAULT NULL COMMENT '대손상각처리일자',
  `badbt_dp_slpdt` date DEFAULT NULL COMMENT '대손상각전표일자',
  `badbt_dp_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대손상각전표번호',
  `badbt_dp_slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대손상각전표라인번호',
  `badbt_dp_dl_nomtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대손상각처리적요사항',
  `badbt_dp_dgre` decimal(3,0) DEFAULT NULL COMMENT '대손상각차수',
  `badbt_dp_admno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대손상각관리번호',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `da_slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '자료전표번호',
  `da_slp_lnno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자료전표라인번호',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장종류코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장번호',
  `badbt_dp_st_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대손상각기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감자료종류코드',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `badbt_dp_dl_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대손상각처리기관코드',
  `badbt_dp_dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대손상각처리직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대손충당자료';
