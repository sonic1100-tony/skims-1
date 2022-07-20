--
-- Table structure for table `ins_sbscr_dmydp_inq`
--

DROP TABLE IF EXISTS `ins_sbscr_dmydp_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_sbscr_dmydp_inq` (
  `dmcy_tlm_admno` decimal(7,0) NOT NULL COMMENT '휴면전문관리번호',
  `dmcy_tlm_opndt` date NOT NULL COMMENT '휴면전문개시일자',
  `dmcy_tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '휴면전문전송순번',
  `dmcy_tlm_opn_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴면전문개시시간',
  `dmcy_tlm_specd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴면전문종별코드',
  `dmcy_spe_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴면종별업무구분코드',
  `dmcy_anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴면응답코드',
  `fntn_tlm_admno` decimal(7,0) DEFAULT NULL COMMENT '재단전문관리번호',
  `fntn_tlm_tsdt` date DEFAULT NULL COMMENT '재단전문전송일자',
  `fntn_tlm_ts_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재단전문전송시간',
  `rcp_fn_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수금융기관코드',
  `org_rgps_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원권리자주민번호',
  `org_rgps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원권리자성명',
  `ply_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권계좌번호',
  `bk_dp_tct` decimal(5,0) DEFAULT NULL COMMENT '은행예금총건수',
  `lf_ins_tct` decimal(5,0) DEFAULT NULL COMMENT '생명보험총건수',
  `dm_ins_tct` decimal(5,0) DEFAULT NULL COMMENT '손해보험총건수',
  `ptof_dp_tct` decimal(5,0) DEFAULT NULL COMMENT '우체국예금총건수',
  `ptof_ins_tct` decimal(5,0) DEFAULT NULL COMMENT '우체국보험총건수',
  `fntn_sbscr_tct` decimal(5,0) DEFAULT NULL COMMENT '재단출연총건수',
  `t_reply_ct` decimal(5,0) DEFAULT NULL COMMENT '총회보건수',
  `reply_ct` decimal(5,0) DEFAULT NULL COMMENT '회보건수',
  `inq_reply_more` decimal(1,0) DEFAULT NULL COMMENT '조회회보MORE',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dmcy_tlm_admno`,`dmcy_tlm_opndt`,`dmcy_tlm_ts_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출연휴면예금조회';
