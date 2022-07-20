--
-- Table structure for table `ins_rvi_adm`
--

DROP TABLE IF EXISTS `ins_rvi_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rvi_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `rvi_cr_seqno` decimal(5,0) NOT NULL COMMENT '부활발생순번',
  `cnldt` date NOT NULL COMMENT '해지일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `ex_rcv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '환입환수구분코드',
  `rvibf_fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '부활전최종납입회차',
  `rvibf_fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부활전최종납입년월',
  `ar_str_seq` decimal(5,0) DEFAULT NULL COMMENT '연체시작회차',
  `ar_nd_seq` decimal(5,0) DEFAULT NULL COMMENT '연체종료회차',
  `ar_ct` decimal(5,0) DEFAULT NULL COMMENT '연체횟수',
  `ar_days` decimal(5,0) DEFAULT NULL COMMENT '연체일수',
  `ar_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연체보험료',
  `ar_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연체이자',
  `rvidt` date DEFAULT NULL COMMENT '부활일자',
  `rp_ct` decimal(5,0) DEFAULT NULL COMMENT '영수횟수',
  `rp_fnl_pym_seq` decimal(5,0) DEFAULT NULL COMMENT '영수최종납입회차',
  `rp_fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수최종납입년월',
  `rp_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '영수보험료',
  `rp_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '영수이자',
  `t1_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1회보험료',
  `rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '영수금액',
  `rp_admno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수관리번호',
  `rvi_ppdt` date DEFAULT NULL COMMENT '부활계상일자',
  `befo_rvi_cr_seqno` decimal(5,0) DEFAULT NULL COMMENT '이전부활발생순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_rvi_adm_00` (`plyno`,`rvi_cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부활관리';
