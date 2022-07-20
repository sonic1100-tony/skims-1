--
-- Table structure for table `ins_dcl_info_adm`
--

DROP TABLE IF EXISTS `ins_dcl_info_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dcl_info_adm` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `dcl_cyccd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시주기코드',
  `dcl_da_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시자료구분코드',
  `dcl_da_stcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시자료상태코드',
  `chr_dep_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당부서코드',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공시정보관리';
