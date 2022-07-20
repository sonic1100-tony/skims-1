--
-- Table structure for table `ins_bsns_noty_dcu`
--

DROP TABLE IF EXISTS `ins_bsns_noty_dcu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bsns_noty_dcu` (
  `rgtdt` date NOT NULL COMMENT '등록일자',
  `rgt_seqno` decimal(3,0) NOT NULL COMMENT '등록순번',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `bsns_noty_dcu_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무알림문서구분코드',
  `dcu_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서제목',
  `dcu_url_nm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서URL명',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `inqct` decimal(7,0) DEFAULT NULL COMMENT '조회건수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rgtdt`,`rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업무알림문서';
