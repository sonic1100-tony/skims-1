--
-- Table structure for table `ins_cr_img_adm`
--

DROP TABLE IF EXISTS `ins_cr_img_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_img_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사용인번호',
  `apl_lmit_bj_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '청약제한대상여부',
  `img_srvr_rgt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지서버등록여부',
  `lmit_ap_strdt` date NOT NULL COMMENT '제한적용시작일자',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `img_itmcd` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지품목코드',
  `img_rgtdt` date DEFAULT NULL COMMENT '이미지등록일자',
  `img_rgt_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지등록경로코드',
  `holo_sign_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자필서명여부',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `cr_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약채널코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_img_adm_00` (`dh_stfno`,`usrno`,`apl_lmit_bj_yn`,`img_srvr_rgt_yn`,`lmit_ap_strdt`,`plno`,`img_itmcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차이미지관리';
