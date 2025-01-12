--
-- Table structure for table `ins_cr_udrtk_atps`
--

DROP TABLE IF EXISTS `ins_cr_udrtk_atps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_udrtk_atps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `udrtk_atps_no` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '인수유의자번호',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `utatp_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자식별번호',
  `udrtk_atps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자명',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `carno_hngl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호한글',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수조사순번',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `nrdps_rl_jb_kornm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자실제직업한글명',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드',
  `cr_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차형태코드',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `bf_clmmt_1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사고사항1',
  `bf_clmmt_2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사고사항2',
  `bf_clmmt_3` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사고사항3',
  `bf_clmmt_4` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사고사항4',
  `bf_clmmt_5` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사고사항5',
  `udrtk_vltcd_1` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수위배코드1',
  `udrtk_vltcd_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수위배코드2',
  `udrtk_vltcd_3` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수위배코드3',
  `udrtk_vltcd_4` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수위배코드4',
  `udrtk_vltcd_5` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수위배코드5',
  `rgt_mng_ctncd_1` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록조치의견코드1',
  `rgt_mng_ctncd_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록조치의견코드2',
  `rgt_mng_ctncd_3` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록조치의견코드3',
  `rgt_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록사유',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `ud_mng_ctncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사조치의견코드',
  `ud_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사의견',
  `ud_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사직원번호',
  `udwdt` date DEFAULT NULL COMMENT '심사일자',
  `udrtk_atps_rgt_stncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자등록기준코드',
  `utatp_fnl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수유의자최종상태코드',
  `drvnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자명',
  `nrdps_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자관계코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_udrtk_atps_00` (`udrtk_atps_no`,`ch_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차인수유의자';
