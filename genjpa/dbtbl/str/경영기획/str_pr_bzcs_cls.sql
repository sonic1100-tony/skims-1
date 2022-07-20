--
-- Table structure for table `str_pr_bzcs_cls`
--

DROP TABLE IF EXISTS `str_pr_bzcs_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_pr_bzcs_cls` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `cls_da_seqno` decimal(10,0) NOT NULL COMMENT '마감자료순번',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '수입보험료발생순번',
  `cnrdt` date NOT NULL COMMENT '계약일자',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매유형코드',
  `udrtk_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수형태코드',
  `nanum_trt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '나눔특약여부',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `pr_bzcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예정사업비',
  `pr_nwcrt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예정신계약비',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '귀속기관코드',
  `pr_cmlcs` decimal(17,2) DEFAULT '0.00' COMMENT '예정수금비',
  `pr_mncs` decimal(17,2) DEFAULT '0.00' COMMENT '예정유지비',
  `pr_nwcrt_tamt` decimal(15,0) DEFAULT '0' COMMENT '예정신계약비총액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`cls_da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예정사업비마감'
