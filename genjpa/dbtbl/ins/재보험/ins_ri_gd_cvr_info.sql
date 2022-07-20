--
-- Table structure for table `ins_ri_gd_cvr_info`
--

DROP TABLE IF EXISTS `ins_ri_gd_cvr_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ri_gd_cvr_info` (
  `crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '계약번호',
  `gd_cvr_re_flgcd` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '상품담보출재구분코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `fnl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '최종여부',
  `rert` decimal(12,6) NOT NULL COMMENT '출재율',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`crano`,`gd_cvr_re_flgcd`,`gdcd`,`cvrcd`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험상품담보정보';
