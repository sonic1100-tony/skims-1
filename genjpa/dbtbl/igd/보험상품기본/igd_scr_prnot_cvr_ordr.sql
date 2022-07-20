--
-- Table structure for table `igd_scr_prnot_cvr_ordr`
--

DROP TABLE IF EXISTS `igd_scr_prnot_cvr_ordr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_scr_prnot_cvr_ordr` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `idc_ordr` decimal(7,0) NOT NULL COMMENT '표시순서',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`sl_cvrcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화면출력물담보순서';
