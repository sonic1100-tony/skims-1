--
-- Table structure for table `aud_rtx_stock`
--

DROP TABLE IF EXISTS `aud_rtx_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_rtx_stock` (
  `rtx_stock_no` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증재고번호',
  `rtx_bkg_num` decimal(5,0) NOT NULL COMMENT '영수증책권수',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `rtx_stock_crst_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증재고현황구분코드',
  `rc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령여부',
  `tgnrt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총괄기관코드',
  `tgnrt_org_rcdt` date DEFAULT NULL COMMENT '총괄기관수령일자',
  `tgnrt_rc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총괄수령직원번호',
  `tgnrt_org_mfgdt` date DEFAULT NULL COMMENT '총괄기관출고일자',
  `tgnrt_mfg_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총괄출고직원번호',
  `adm_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리지점기관코드',
  `adm_br_rcdt` date DEFAULT NULL COMMENT '관리지점수령일자',
  `adm_br_rc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리지점수령직원번호',
  `adm_br_mfgdt` date DEFAULT NULL COMMENT '관리지점출고일자',
  `adm_br_mfg_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리지점출고직원번호',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `dh_br_rcdt` date DEFAULT NULL COMMENT '취급지점수령일자',
  `dh_br_rc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점수령직원번호',
  `dh_br_mfgdt` date DEFAULT NULL COMMENT '취급지점출고일자',
  `dh_br_mfg_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점출고직원번호',
  `dhgnc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급소기관코드',
  `dhgnc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급소직원번호',
  `dhgnc_rcdt` date DEFAULT NULL COMMENT '취급소수령일자',
  `rc_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령취급직원번호',
  `dhgnc_rtndt` date DEFAULT NULL COMMENT '취급소반납일자',
  `dhgnc_rtn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급소반납직원번호',
  `rtx_dm_org_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증청구기관구분코드',
  `rtx_dm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증청구기관코드',
  `rtx_mfg_org_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증출고기관구분코드',
  `rtx_mfg_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증출고기관코드',
  `rtx_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증종류코드',
  `rtx_dmdt` date DEFAULT NULL COMMENT '영수증청구일자',
  `rtx_dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '영수증청구순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rtx_stock_no`,`rtx_bkg_num`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증재고';
