--
-- Table structure for table `igd_crdis_cvr_mpp`
--

DROP TABLE IF EXISTS `igd_crdis_cvr_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_crdis_cvr_mpp` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보세부구분코드',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `atr_mnvl` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '속성최소값',
  `atr_mxvl` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '속성최대값',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `intn_org_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관담보코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ap_mult` decimal(15,5) DEFAULT NULL COMMENT '적용배수',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`cvrcd`,`cvr_dt_flgcd`,`atrcd`,`atr_mnvl`,`atr_mxvl`,`ap_nddt`,`ap_strdt`,`intn_org_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용정보원담보매핑';
