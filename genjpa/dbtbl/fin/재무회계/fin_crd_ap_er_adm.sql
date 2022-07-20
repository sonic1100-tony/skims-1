--
-- Table structure for table `fin_crd_ap_er_adm`
--

DROP TABLE IF EXISTS `fin_crd_ap_er_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crd_ap_er_adm` (
  `ap_reqdt` date NOT NULL COMMENT '승인요청일자',
  `rqsno` decimal(10,0) NOT NULL COMMENT '요청순번',
  `crd_ap_er_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드승인오류유형코드',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드회사코드',
  `crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '카드번호',
  `rs_bzmno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민사업자번호',
  `owrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '소유자명',
  `vald_trm` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '유효기간',
  `at_mnt` decimal(3,0) NOT NULL COMMENT '할부개월',
  `vnccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'VAN사코드',
  `crd_ownr_relcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드소유주관계코드',
  `crd_apamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '카드승인금액',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리직원번호',
  `crd_apno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드승인번호',
  `nans_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무응답처리구분코드',
  `crd_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드원장번호',
  `msg_id` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지ID',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ap_reqdt`,`rqsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='카드승인오류관리';
