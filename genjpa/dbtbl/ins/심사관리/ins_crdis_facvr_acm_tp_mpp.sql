--
-- Table structure for table `ins_crdis_facvr_acm_tp_mpp`
--

DROP TABLE IF EXISTS `ins_crdis_facvr_acm_tp_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crdis_facvr_acm_tp_mpp` (
  `crdis_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원담보코드',
  `acm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '누적유형코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`crdis_cvrcd`,`acm_tpcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신용정보원정액담보누적유형매핑';
