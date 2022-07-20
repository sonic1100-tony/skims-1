--
-- Table structure for table `igd_intn_org_cvr_rel`
--

DROP TABLE IF EXISTS `igd_intn_org_cvr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_intn_org_cvr_rel` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `intn_org_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관유형코드',
  `cr_clm_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고담보구분코드',
  `intn_org_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관담보코드',
  `drv_yncd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '운전자여부코드',
  `cr_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '차량용도코드',
  `sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '성별코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `atr_flgcd_1` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성구분코드1',
  `atr_flgcd_2` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성구분코드2',
  `atr_flgcd_3` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성구분코드3',
  `atr_flgcd_4` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성구분코드4',
  `intn_org_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관상품코드',
  `inr_ins_sno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통합보험일련번호',
  `ba_trt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본특약구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`cvrcd`,`clm_cvrcd`,`intn_org_tpcd`,`cr_clm_cvr_flgcd`,`intn_org_cvrcd`,`drv_yncd`,`cr_usecd`,`sexcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대외기관담보관계';
