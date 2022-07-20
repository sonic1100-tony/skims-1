--
-- Table structure for table `ins_crdis_ts_cvr_da`
--

DROP TABLE IF EXISTS `ins_crdis_ts_cvr_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crdis_ts_cvr_da` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_opndt` date NOT NULL COMMENT '전문개시일자',
  `stdt` date NOT NULL COMMENT '기준일자',
  `dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래구분코드',
  `da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자료구분코드',
  `dl_sno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래일련번호',
  `cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회사코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민사업자번호',
  `intn_org_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관담보코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보명',
  `crdis_cvr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원담보상태코드',
  `cvr_st_chdt` date DEFAULT NULL COMMENT '담보상태변경일자',
  `cvr_isamt` decimal(15,0) DEFAULT NULL COMMENT '담보가입금액',
  `da_stdt` date DEFAULT NULL COMMENT '자료기준일자',
  `crdis_dl_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원처리사유코드',
  `crdis_da_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신용정보원자료처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_crdis_ts_cvr_da_00` (`tlm_opndt`,`stdt`,`dl_flgcd`,`da_flgcd`,`dl_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=129151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용정보원전송담보자료';
