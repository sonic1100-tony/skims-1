--
-- Table structure for table `fin_crd_rt`
--

DROP TABLE IF EXISTS `fin_crd_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crd_rt` (
  `dmdt` date NOT NULL COMMENT '청구일자',
  `da_seqno` decimal(7,0) NOT NULL COMMENT '자료순번',
  `crd_ldgno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드원장번호',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드회사코드',
  `jnsno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '가맹점번호',
  `crd_apdt` date NOT NULL COMMENT '카드승인일자',
  `crd_apno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '카드승인번호',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '카드번호',
  `at_mnt` decimal(3,0) NOT NULL COMMENT '할부개월',
  `emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구금액',
  `rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민사업자번호',
  `hngl_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글성명',
  `eng_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문성명',
  `rt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반송사유코드',
  `rt_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '반송사유',
  `rt_dl_cpldt` date DEFAULT NULL COMMENT '반송처리완료일자',
  `rt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '반송여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dmdt`,`da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='카드반송';
