--
-- Table structure for table `fin_po_rst`
--

DROP TABLE IF EXISTS `fin_po_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_po_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산기관코드',
  `bdg_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '예산년월',
  `po_seqno` decimal(5,0) NOT NULL COMMENT '시책순번',
  `po_rst_seqno` decimal(5,0) NOT NULL COMMENT '시책결과순번',
  `elec_prv_dcu_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '전자결재문서아이디',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) DEFAULT NULL COMMENT '신청순번',
  `awrd_amt` decimal(15,0) DEFAULT NULL COMMENT '시상금액',
  `npamt` decimal(15,0) DEFAULT NULL COMMENT '미지급금액',
  `py_yncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급여부코드',
  `po_rst_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시책결과상태코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `dsamt` decimal(15,0) DEFAULT NULL COMMENT '결정금액',
  `ds_diamt` decimal(15,0) DEFAULT NULL COMMENT '결정차액금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_po_rst_00` (`bdg_orgcd`,`bdg_yymm`,`po_seqno`,`po_rst_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='시책결과';
