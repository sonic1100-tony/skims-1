--
-- Table structure for table `fin_rv_etdl_rq`
--

DROP TABLE IF EXISTS `fin_rv_etdl_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rv_etdl_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `et_dl_reqno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '기타처리요청번호',
  `et_dl_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기타처리상태코드',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요청기관코드',
  `rqfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청직원번호',
  `rqrs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청사유',
  `dsml_rs` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기각사유',
  `et_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기타처리구분코드',
  `frdt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '초일자여부',
  `et_dl_img_bsnno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타처리이미지업무번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_rv_etdl_rq_00` (`et_dl_reqno`),
  KEY `idx_fin_rv_etdl_rq_10` (`inp_usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수납기타처리요청';
