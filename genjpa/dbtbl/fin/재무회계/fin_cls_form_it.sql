--
-- Table structure for table `fin_cls_form_it`
--

DROP TABLE IF EXISTS `fin_cls_form_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cls_form_it` (
  `cls_form_frmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감장표양식코드',
  `form_seq` decimal(3,0) NOT NULL COMMENT '양식회차',
  `cls_form_itcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '마감장표항목코드',
  `cls_form_it_kornm` varchar(150) COLLATE utf8mb4_bin NOT NULL COMMENT '마감장표항목한글명',
  `cls_form_it_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감장표항목영문명',
  `tot_it_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '집계항목여부',
  `tot_pg_info_flgcd` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '집계프로그램정보구분코드',
  `cls_form_itcal_seqno` decimal(3,0) DEFAULT NULL COMMENT '마감장표항목계산순번',
  `form_lnno` decimal(3,0) DEFAULT NULL COMMENT '양식라인번호',
  `cls_form_it_seqno` decimal(5,0) DEFAULT NULL COMMENT '마감장표항목순번',
  `form_pst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '양식위치구분코드',
  `tblam_idc_pstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔액표시위치코드',
  `inwrt_blnk_vl` decimal(3,0) DEFAULT NULL COMMENT '들여쓰기여백값',
  `blk_line_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '공백라인여부',
  `tx_xcpt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '과세제외여부',
  `prop_admcs_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '재산관리비여부',
  `stpe_pft_it_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '주당이익항목여부',
  `stpe_pft_bj_itcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주당이익대상항목코드',
  `spc_acc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '특별계정여부',
  `xtn_cr_rfd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '소멸계약준비금여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_form_frmcd`,`form_seq`,`cls_form_itcd`),
  KEY `idx_fin_cls_form_it_01` (`tot_it_yn`),
  KEY `idx_fin_cls_form_it_02` (`tot_pg_info_flgcd`),
  KEY `idx_fin_cls_form_it_03` (`cls_form_frmcd`,`form_seq`,`cls_form_itcd`,`tot_it_yn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='마감장표항목';
