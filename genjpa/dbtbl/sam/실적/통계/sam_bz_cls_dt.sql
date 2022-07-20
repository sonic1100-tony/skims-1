--
-- Table structure for table `sam_bz_cls_dt`
--

DROP TABLE IF EXISTS `sam_bz_cls_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_bz_cls_dt` (
  `bz_cls_bsncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영업마감업무코드',
  `bz_cls_dgre` decimal(3,0) NOT NULL COMMENT '영업마감차수',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `ap_str_hms` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '적용시작시간',
  `ap_nd_hms` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '적용종료시간',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bz_cls_bsncd`,`bz_cls_dgre`,`cls_yymm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업마감일자';
