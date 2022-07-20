--
-- Table structure for table `fin_txaf_pym_slp_info`
--

DROP TABLE IF EXISTS `fin_txaf_pym_slp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_txaf_pym_slp_info` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전표라인번호',
  `dtit_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '세목구분코드',
  `pym_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '납부금액',
  `py_crno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '지급발생번호',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '적요사항',
  `pypl_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처고객번호',
  `pypl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처구분코드',
  `pylno` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처번호',
  `pylnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처명',
  `pypl_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처은행코드',
  `pypl_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처계좌번호',
  `rr_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속년월',
  `rpr_prdno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신고기수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`slpdt`,`slpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='세무납부전표정보';
