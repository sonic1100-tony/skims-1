--
-- Table structure for table `fin_usr_ic_xc`
--

DROP TABLE IF EXISTS `fin_usr_ic_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_usr_ic_xc` (
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `agy_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대리점직원번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `gdamt` decimal(15,0) DEFAULT NULL COMMENT '상품금액',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `gd_qant` decimal(7,0) DEFAULT NULL COMMENT '상품수량',
  `gd_unprc` decimal(15,0) DEFAULT NULL COMMENT '상품단가',
  `ch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`slpdt`,`slpno`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사용자소득정산';
