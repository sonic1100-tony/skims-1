--
-- Table structure for table `ccm_rob_nv`
--

DROP TABLE IF EXISTS `ccm_rob_nv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_rob_nv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `rob_nv_seqno` decimal(5,0) NOT NULL COMMENT '도난조사순번',
  `rob_plc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '도난장소구분코드',
  `crdtr_flt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '차주과실유무',
  `rob_dl_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '도난처리상태코드',
  `pkdt` date NOT NULL COMMENT '주차일자',
  `pk_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주차시간',
  `key_psct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '열쇠보유수',
  `robtm_cr_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '도난시차량상태코드',
  `acd_mng_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사건조치유무',
  `trvl_dst` decimal(7,0) DEFAULT NULL COMMENT '주행거리',
  `cr_colnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '차량색상명',
  `cr_purdt` date DEFAULT NULL COMMENT '차량구입일자',
  `cr_pur_cndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량구입조건코드',
  `cr_purnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량구입처명',
  `sllr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매자성명',
  `pmn_rprdt` date DEFAULT NULL COMMENT '경찰신고일자',
  `pmn_rpr_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경찰신고시간',
  `wrstm_cnf_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '진술서확인여부',
  `aplct_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신고자성명',
  `aplct_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신고자관계코드',
  `fnl_drv_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종운전자관계코드',
  `fnl_drv_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종운전자성명',
  `rob_cnfdt` date NOT NULL COMMENT '도난확인일자',
  `rob_cnf_hms` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '도난확인시간',
  `oper_oj` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운행목적',
  `wr_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불량계약구분코드',
  `slctn_udrtk_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '선별인수여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_rob_nv_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`rob_nv_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='도난조사';
