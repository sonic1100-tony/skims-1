--
-- Table structure for table `aud_tpcl_chr_nsp`
--

DROP TABLE IF EXISTS `aud_tpcl_chr_nsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_tpcl_chr_nsp` (
  `adt_bsns_dsccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사업무식별코드',
  `stdt` date NOT NULL COMMENT '기준일자',
  `adt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '감사직원번호',
  `bsns_1_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무1담당직원번호',
  `bsns_2_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무2담당직원번호',
  `bsns_3_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무3담당직원번호',
  `bsns_4_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무4담당직원번호',
  `wst_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '폐기여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adt_bsns_dsccd`,`stdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유형별담당검사';
