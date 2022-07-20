--
-- Table structure for table `str_aw_cc_achv_stf`
--

DROP TABLE IF EXISTS `str_aw_cc_achv_stf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_aw_cc_achv_stf` (
  `av_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '실적년월',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `psgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소속기관코드',
  `stf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원구분코드',
  `bz_atrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업속성코드',
  `stf_bz_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원영업상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`av_yymm`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수당산출업적직원';
