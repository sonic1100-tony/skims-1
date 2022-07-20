--
-- Table structure for table `fin_txaf_cls_adm`
--

DROP TABLE IF EXISTS `fin_txaf_cls_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_txaf_cls_adm` (
  `dtit_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '세목구분코드',
  `cls_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년도',
  `ic_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소득상세구분코드',
  `txaf_cls_trmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '세무마감기간코드',
  `txaf_cls_trm_nm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '세무마감기간명',
  `str_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '시작년월',
  `nd_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '종료년월',
  `txaf_cls_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '세무마감상태코드',
  `rpr_prdt` date DEFAULT NULL COMMENT '신고예정일자',
  `cls_dldt` date DEFAULT NULL COMMENT '마감처리일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dtit_flgcd`,`cls_yr`,`ic_dt_flgcd`,`txaf_cls_trmcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='세무마감관리';
