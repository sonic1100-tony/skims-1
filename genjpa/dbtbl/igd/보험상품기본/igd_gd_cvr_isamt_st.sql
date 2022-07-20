--
-- Table structure for table `igd_gd_cvr_isamt_st`
--

DROP TABLE IF EXISTS `igd_gd_cvr_isamt_st`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_cvr_isamt_st` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `isamt_inp_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입금액입력유형코드',
  `mn_isamt` decimal(15,0) NOT NULL COMMENT '최소가입금액',
  `mx_isamt` decimal(15,0) NOT NULL COMMENT '최대가입금액',
  `isamt_id_unt` decimal(17,2) NOT NULL COMMENT '가입금액증감단위',
  `isamt` decimal(17,2) NOT NULL COMMENT '가입금액',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`sl_cvrcd`,`ap_strdt`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품담보가입금액기준';
