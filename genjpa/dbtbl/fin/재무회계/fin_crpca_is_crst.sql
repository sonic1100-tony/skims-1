--
-- Table structure for table `fin_crpca_is_crst`
--

DROP TABLE IF EXISTS `fin_crpca_is_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca_is_crst` (
  `iptdt` date NOT NULL COMMENT '입력일자',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드회사코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `rcvdt` date NOT NULL COMMENT '수신일자',
  `crd_knd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드종류구분코드',
  `crd_chek_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신용체크구분코드',
  `crd_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드세부구분코드',
  `stm_rpbl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제책임구분코드',
  `crd_grd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드등급구분코드',
  `crpca_gd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드상품구분코드',
  `crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '카드번호',
  `mbnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '회원명',
  `eng_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문성명',
  `crd_vald_trm` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '카드유효기간',
  `crd_isdt` date NOT NULL COMMENT '카드발급일자',
  `crpca_stm_daycd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드결제일코드',
  `crpca_stm_bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드결제은행코드',
  `stm_actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '결제계좌번호',
  `home_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택우편번호',
  `home_road_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택도로명',
  `home_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자택상세주소',
  `chbf_crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전카드번호',
  `crpca_fnl_deldt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드최종거래일자',
  `lmamt` decimal(15,0) NOT NULL COMMENT '한도금액',
  `lm_esdt` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한도설정일자',
  `crpca_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드상태구분코드',
  `crd_st_rcod_dt` date DEFAULT NULL COMMENT '카드상태등재일자',
  `crnt_ar_pcamt` decimal(15,0) DEFAULT NULL COMMENT '현재연체원금',
  `arrs` decimal(15,0) DEFAULT NULL COMMENT '연체료',
  `stamt` decimal(17,2) DEFAULT NULL COMMENT '결제금액',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`iptdt`,`crd_cmpcd`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드발급현황';
