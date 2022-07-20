--
-- Table structure for table `fin_cu_st_dt`
--

DROP TABLE IF EXISTS `fin_cu_st_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cu_st_dt` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `lpnt_chncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트채널코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_str_ins_seq` decimal(5,0) NOT NULL COMMENT '적용시작보험회차',
  `ap_nd_dthms` datetime DEFAULT NULL COMMENT '적용종료일시',
  `ap_nd_ins_seq` decimal(5,0) DEFAULT NULL COMMENT '적용종료보험회차',
  `cash_curt` decimal(8,3) DEFAULT NULL COMMENT '현금적립율',
  `lott_crd_curt` decimal(8,3) DEFAULT NULL COMMENT '롯데카드적립율',
  `crdcr_curt` decimal(8,3) DEFAULT NULL COMMENT '신용카드적립율',
  `pnt_us_curt` decimal(8,3) DEFAULT NULL COMMENT '포인트사용적립율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`lpnt_chncd`,`ap_str_dthms`,`ap_str_ins_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적립기준상세';
