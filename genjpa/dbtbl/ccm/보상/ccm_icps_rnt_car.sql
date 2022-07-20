--
-- Table structure for table `ccm_icps_rnt_car`
--

DROP TABLE IF EXISTS `ccm_icps_rnt_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_icps_rnt_car` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rnt_carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '렌트차량번호',
  `dvpns_ins_cmpcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원보험회사코드',
  `dvpns_clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원사고담보코드',
  `dvpns_clmno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원사고번호',
  `dvpns_dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원피해서열',
  `dmge_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해차량번호',
  `rnt_str_dthms` datetime DEFAULT NULL COMMENT '렌트시작일시',
  `rnt_nd_dthms` datetime DEFAULT NULL COMMENT '렌트종료일시',
  `rnt_car_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트카업체명',
  `rnt_cmp_bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트회사사업자번호',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `pyamt` decimal(17,2) DEFAULT NULL COMMENT '지급금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_icps_rnt_car_00` (`rnt_carno`,`dvpns_ins_cmpcd`,`dvpns_clm_cvrcd`,`dvpns_clmno`,`dvpns_dmge_rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='ICPS렌트차량';
