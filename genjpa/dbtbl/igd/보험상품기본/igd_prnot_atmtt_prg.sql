--
-- Table structure for table `igd_prnot_atmtt_prg`
--

DROP TABLE IF EXISTS `igd_prnot_atmtt_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_prnot_atmtt_prg` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `atmtt_prg_no` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '유의사항문구번호',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `out_ordr` decimal(5,0) NOT NULL COMMENT '출력순서',
  `prg_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '문구내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`sl_cvrcd`,`cvrcd`,`atmtt_prg_no`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출력물유의사항문구';
