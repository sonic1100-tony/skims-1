--
-- Table structure for table `fin_po`
--

DROP TABLE IF EXISTS `fin_po`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_po` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산기관코드',
  `bdg_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '예산년월',
  `po_seqno` decimal(5,0) NOT NULL COMMENT '시책순번',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '전자결재문서아이디',
  `bdg_ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '예산계정과목코드',
  `bdg_xuamt` decimal(15,0) DEFAULT NULL COMMENT '예산전용금액',
  `spot_xc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현물정산여부',
  `atch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전속구분코드',
  `ben_bjpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수혜대상코드',
  `imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '종목코드',
  `po_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시책주기코드',
  `po_vl_strdt` date DEFAULT NULL COMMENT '시책평가시작일자',
  `po_vl_nddt` date DEFAULT NULL COMMENT '시책평가종료일자',
  `po_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시책상태코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_po_00` (`bdg_orgcd`,`bdg_yymm`,`po_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='시책';
