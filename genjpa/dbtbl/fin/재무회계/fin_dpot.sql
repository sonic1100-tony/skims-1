--
-- Table structure for table `fin_dpot`
--

DROP TABLE IF EXISTS `fin_dpot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dpot` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dpot_admno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '공탁금관리번호',
  `pydt` date NOT NULL COMMENT '지급일자',
  `py_seqno` decimal(5,0) NOT NULL COMMENT '지급순번',
  `acdno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '사건번호',
  `rqaps_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '신청자명',
  `contr_rqaps_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '피신청자명',
  `osamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공탁금액',
  `chr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '담당기관코드',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당직원번호',
  `pylnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '지급처명',
  `py_ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급승인요청직원번호',
  `py_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급승인직원번호',
  `rcdt` date DEFAULT NULL COMMENT '수령일자',
  `rc_ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령승인요청직원번호',
  `rc_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령승인직원번호',
  `cahdt` date DEFAULT NULL COMMENT '불출일자',
  `cah_dmdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불출요청자명',
  `cah_ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불출승인요청직원번호',
  `cah_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불출승인직원번호',
  `rydt` date DEFAULT NULL COMMENT '회수일자',
  `ry_ap_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회수승인요청직원번호',
  `ry_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회수승인직원번호',
  `dpot_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공탁금상태코드',
  `dmd_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자ID',
  `dmd_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자기관코드',
  `dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_dpot_00` (`dpot_admno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공탁금';
