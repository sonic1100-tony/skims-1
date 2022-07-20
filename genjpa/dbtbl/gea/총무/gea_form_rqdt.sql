--
-- Table structure for table `gea_form_rqdt`
--

DROP TABLE IF EXISTS `gea_form_rqdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_form_rqdt` (
  `rq_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '신청년월',
  `rq_strdt` date DEFAULT NULL COMMENT '신청시작일자',
  `rq_nddt` date DEFAULT NULL COMMENT '신청종료일자',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rq_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='서식신청일자';
