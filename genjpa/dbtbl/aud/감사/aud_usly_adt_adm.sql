--
-- Table structure for table `aud_usly_adt_adm`
--

DROP TABLE IF EXISTS `aud_usly_adt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_usly_adt_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `befo_svle_flgcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '사전감시구분코드',
  `befo_svle_titl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사전감시제목',
  `drf_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기안기관코드',
  `drf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기안직원번호',
  `ap_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인상태구분코드',
  `rgt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록기관코드',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `file_key` decimal(20,0) DEFAULT NULL COMMENT '파일KEY',
  `o1_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차결재직원번호',
  `o1_prvdt` date DEFAULT NULL COMMENT '1차결재일자',
  `ap_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인기관코드',
  `o2_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차결재직원번호',
  `o2_prvdt` date DEFAULT NULL COMMENT '2차결재일자',
  `o3_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3차결재직원번호',
  `o3_prvdt` date DEFAULT NULL COMMENT '3차결재일자',
  `ctn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의견내용',
  `rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일상감사관리';
