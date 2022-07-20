--
-- Table structure for table `ins_cr_oj_nrdps_list`
--

DROP TABLE IF EXISTS `ins_cr_oj_nrdps_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_oj_nrdps_list` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `nrdps_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자상태코드',
  `nrdps_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자진행상태코드',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `fage` decimal(3,0) DEFAULT NULL COMMENT '만연령',
  `ins_age` decimal(3,0) DEFAULT NULL COMMENT '보험연령',
  `coop_plac_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴처이름',
  `coop_plac_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제휴처아이디',
  `woncv_diamt_prm` decimal(15,0) DEFAULT NULL COMMENT '원화환산차액보험료',
  `woncv_acm_prm` decimal(15,0) DEFAULT NULL COMMENT '원화환산누적보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`oj_seqno`,`relpc_seqno`,`nds_ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약목적물피보험자명세';
