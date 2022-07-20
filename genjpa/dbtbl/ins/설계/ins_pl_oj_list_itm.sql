--
-- Table structure for table `ins_pl_oj_list_itm`
--

DROP TABLE IF EXISTS `ins_pl_oj_list_itm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_oj_list_itm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `oj_list_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '목적물명세발생구분코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '담보코드',
  `oj_relpc_seqno` decimal(5,0) NOT NULL COMMENT '목적물관계자순번',
  `spcft_itm_seqno` decimal(5,0) NOT NULL COMMENT '명기품목순번',
  `list_itm_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '명세품목상태코드',
  `spcft_itm_mdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '명기품목모델명',
  `spcft_itmnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '명기품목명',
  `spcft_itm_owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '명기품목소유자명',
  `std` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '규격',
  `qant` decimal(5,0) DEFAULT NULL COMMENT '수량',
  `prd_cmpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제조회사명',
  `pur_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구입년월',
  `piepr_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '개당가입금액',
  `spcft_itm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '명기품목구분코드',
  `spcft_itm_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '명기품목종류코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `rob_spcft_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '도난명기가입금액',
  `cst_mch_rgtno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '건설기계등록번호',
  `anml_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동물종류코드',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '생년월일',
  `age` decimal(3,0) DEFAULT NULL COMMENT '연령',
  `otrsd_glf_spcft_isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '구외골프명기가입금액',
  `sl_trdr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매업자명',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_oj_list_itm_00` (`plno`,`cgaf_ch_seqno`,`oj_list_cr_flgcd`,`cvrcd`,`oj_relpc_seqno`,`spcft_itm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계목적물명세품목';
