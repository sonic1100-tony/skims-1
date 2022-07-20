--
-- Table structure for table `fin_act_cls_adm`
--

DROP TABLE IF EXISTS `fin_act_cls_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_act_cls_adm` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `act_cls_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '회계마감업무구분코드',
  `strdt` date NOT NULL COMMENT '시작일자',
  `nddt` date NOT NULL COMMENT '종료일자',
  `act_cls_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '회계마감상태코드',
  `cls_dldt` date DEFAULT NULL COMMENT '마감처리일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`act_cls_bsns_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='회계마감관리';
