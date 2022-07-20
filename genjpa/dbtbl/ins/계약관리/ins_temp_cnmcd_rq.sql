--
-- Table structure for table `ins_temp_cnmcd_rq`
--

DROP TABLE IF EXISTS `ins_temp_cnmcd_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_temp_cnmcd_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `rq_dthms` datetime NOT NULL COMMENT '요청일시',
  `cnmcd_rq_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차명코드요청상태코드',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `dl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리직원번호',
  `cr_prd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량제작회사코드',
  `carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명',
  `dspl` decimal(4,0) DEFAULT NULL COMMENT '배기량',
  `mot_out_qnty` decimal(15,0) DEFAULT NULL COMMENT '모터출력량',
  `rgsct` decimal(5,0) DEFAULT NULL COMMENT '정원수',
  `load_fxqtt` decimal(10,0) DEFAULT NULL COMMENT '적재정량',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `yytp` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연식',
  `cnmcd_snd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드발송구분코드',
  `dl_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리내용',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_temp_cnmcd_rq_00` (`reqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='임시차명코드요청';
