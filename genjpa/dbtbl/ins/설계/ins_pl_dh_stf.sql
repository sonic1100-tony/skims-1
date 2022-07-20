--
-- Table structure for table `ins_pl_dh_stf`
--

DROP TABLE IF EXISTS `ins_pl_dh_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_dh_stf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `dh_stf_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원유형코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `prs_dh_stf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표취급직원여부',
  `qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '지분율',
  `bzcs_qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '사업비지분율',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `dmgrt_rk_stf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손해율위험직원여부',
  `nwcr_chek_list_dcuno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신계약체크리스트문서번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_dh_stf_00` (`plno`,`cgaf_ch_seqno`,`dh_stf_tpcd`,`dh_stfno`)
) ENGINE=InnoDB AUTO_INCREMENT=175324 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계취급직원';
