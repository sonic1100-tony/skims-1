--
-- Table structure for table `str_bzpl_it_wrt_as`
--

DROP TABLE IF EXISTS `str_bzpl_it_wrt_as`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzpl_it_wrt_as` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bz_plcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획코드',
  `form_seq` decimal(3,0) NOT NULL COMMENT '양식회차',
  `bz_pl_itcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획항목코드',
  `bz_pl_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획기관코드',
  `bz_pl_ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획보험종목코드',
  `as_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '배정기관코드',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_bzpl_it_wrt_as_00` (`bz_plcd`,`form_seq`,`bz_pl_itcd`,`bz_pl_orgcd`,`bz_pl_ins_imcd`,`as_orgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업계획항목작성배정';
