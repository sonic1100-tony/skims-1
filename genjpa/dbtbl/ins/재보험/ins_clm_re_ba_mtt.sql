--
-- Table structure for table `ins_clm_re_ba_mtt`
--

DROP TABLE IF EXISTS `ins_clm_re_ba_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_clm_re_ba_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `clm_reno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고출재번호',
  `clm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '사고접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) DEFAULT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `py_spc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급내역구분코드',
  `reno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출재번호',
  `ibnf_cs_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험금비용구분코드',
  `payao_py_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '즉시불지급여부',
  `xol_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL구분코드',
  `xi_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추산지급구분코드',
  `xol_event_clmno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL이벤트사고번호',
  `xol_event_clm_dmno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL이벤트사고청구번호',
  `rtro_ppno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수재계상번호',
  `nprp_re_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비비례출재여부',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `xol_crano` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL계약번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_clm_re_ba_mtt_00` (`clm_reno`),
  KEY `idx_ins_clm_re_ba_mtt_10` (`plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=1478 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고출재기본사항';
