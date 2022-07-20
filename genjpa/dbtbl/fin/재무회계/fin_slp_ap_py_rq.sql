--
-- Table structure for table `fin_slp_ap_py_rq`
--

DROP TABLE IF EXISTS `fin_slp_ap_py_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_slp_ap_py_rq` (
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `slp_lnno` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전표라인번호',
  `pylno` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처번호',
  `pypl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처구분코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `pypl_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처계좌번호',
  `dpsr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주',
  `pylnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처명',
  `py_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급방법코드',
  `ar_amt` decimal(15,0) DEFAULT NULL COMMENT '정리금액',
  `py_prdt` date DEFAULT NULL COMMENT '지급예정일자',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `py_crno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급발생번호',
  `ldg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장종류코드',
  `ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원장번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`slpdt`,`slpno`,`slp_lnno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전표승인지급요청';
