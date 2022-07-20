--
-- Table structure for table `fin_spc_acc_fd_tf`
--

DROP TABLE IF EXISTS `fin_spc_acc_fd_tf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_spc_acc_fd_tf` (
  `tfdt` date NOT NULL COMMENT '이체일자',
  `tf_seqno` decimal(5,0) NOT NULL COMMENT '이체순번',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생시스템코드',
  `tf_uramt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체발생금액합계',
  `tf_ntamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '이체이자금액합계',
  `spc_acc_tf_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별계정이체구분코드',
  `spc_acc_tfo1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특별계정이체1차분류코드',
  `tf_bj_strdt` date DEFAULT NULL COMMENT '이체대상시작일자',
  `tf_bj_nddt` date DEFAULT NULL COMMENT '이체대상종료일자',
  `spcdr_pvl_slpdt` date DEFAULT NULL COMMENT '특차계상전표일자',
  `gn_spcdr_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반특차전표번호',
  `spc_spcdr_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별특차전표번호',
  `fdtf_slpdt` date DEFAULT NULL COMMENT '자금이체전표일자',
  `gn_fdtf_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반자금이체전표번호',
  `spc_fdtf_slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별자금이체전표번호',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감자료종류코드',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`tfdt`,`tf_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특별계정자금이체';
