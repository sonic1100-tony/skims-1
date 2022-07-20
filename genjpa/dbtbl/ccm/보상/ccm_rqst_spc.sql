--
-- Table structure for table `ccm_rqst_spc`
--

DROP TABLE IF EXISTS `ccm_rqst_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_rqst_spc` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `rqst_spc_seqno` decimal(3,0) NOT NULL COMMENT '질의내역순번',
  `rqst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '질의구분코드',
  `rqst_rcp_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '질의접수년도',
  `rqst_sno` decimal(5,0) NOT NULL COMMENT '질의일련번호',
  `rqfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청직원번호',
  `rq_dthms` datetime NOT NULL COMMENT '요청일시',
  `clm_rsm_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '사고개요내용',
  `dmge_stt` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '피해상황',
  `rqst_cn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '질의내용',
  `tm_ctn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '팀의견내용',
  `cnn_dep_ctn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련부서의견내용',
  `ispe_tm_ctn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지도팀의견내용',
  `dher_idm_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자구상대상여부',
  `dher_idm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자구상담보코드',
  `dher_idm_rt` decimal(3,0) DEFAULT NULL COMMENT '취급자구상비율',
  `imus_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면부책유형코드',
  `chrct_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인물구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`rqst_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='질의내역';
