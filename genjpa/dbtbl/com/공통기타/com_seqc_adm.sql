--
-- Table structure for table `com_seqc_adm`
--

DROP TABLE IF EXISTS `com_seqc_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_seqc_adm` (
  `seqc_bsncd` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '채번업무코드',
  `mpp_atrvl` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '매핑속성값',
  `seqc_sno` decimal(21,0) NOT NULL COMMENT '채번일련번호',
  `seqc_mn_no` decimal(21,0) NOT NULL COMMENT '채번최소번호',
  `seqc_mx_no` decimal(21,0) NOT NULL COMMENT '채번최대번호',
  `seqc_auto_initl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '채번자동초기화여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`seqc_bsncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='채번관리';
