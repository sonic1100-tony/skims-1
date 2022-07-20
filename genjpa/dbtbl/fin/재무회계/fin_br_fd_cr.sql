--
-- Table structure for table `fin_br_fd_cr`
--

DROP TABLE IF EXISTS `fin_br_fd_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_br_fd_cr` (
  `crdt` date NOT NULL COMMENT '발생일자',
  `crzcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '발생기관코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `fd_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자금발생구분코드',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `cash_uramt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '현금발생금액합계',
  `tf_lm_uramt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체한도발생금액합계',
  `br_ap_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점승인상태코드',
  `ac_ap_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '경리승인상태코드',
  `ap_dthms` datetime DEFAULT NULL COMMENT '승인일시',
  `ap_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인기관코드',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `ap_cash_uramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '승인현금발생금액',
  `ap_tf_lm_uramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '승인이체한도발생금액',
  `py_crno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급발생번호',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `py_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급기관코드',
  `py_xcno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급정산번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`crdt`,`crzcd`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지점자금발생';
