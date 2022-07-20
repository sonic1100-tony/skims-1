--
-- Table structure for table `ins_dp_dl_er`
--

DROP TABLE IF EXISTS `ins_dp_dl_er`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dp_dl_er` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dp_dl_er_seqno` decimal(11,0) NOT NULL COMMENT '입금처리오류순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `pym_seq` decimal(5,0) DEFAULT NULL COMMENT '납입회차',
  `dp_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금원인코드',
  `dp_dt_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금세부원인코드',
  `rtx_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증종류코드',
  `dp_rst_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금결과오류코드',
  `fnl_pym_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종납입년월',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `pym_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입방법코드',
  `rpdt` date DEFAULT NULL COMMENT '영수일자',
  `rvi_nt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '부활이자',
  `pty_or_rtn_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '추징/환급보험료',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `rpamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '영수금액',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `dpps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금원구분코드',
  `rv_dl_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납처리결과코드',
  `ctm_inq_auto_tfsno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '고객조회자동이체번호',
  `pvl_prdt` date DEFAULT NULL COMMENT '계상예정일자',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `rv_sbno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납대기번호',
  `fr_dp_rst_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최초입금결과오류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dp_dl_er_00` (`dp_dl_er_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='입금처리오류';
