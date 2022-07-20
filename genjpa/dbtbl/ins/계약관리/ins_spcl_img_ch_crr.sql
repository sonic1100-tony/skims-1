--
-- Table structure for table `ins_spcl_img_ch_crr`
--

DROP TABLE IF EXISTS `ins_spcl_img_ch_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_spcl_img_ch_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `ch_sno` decimal(3,0) NOT NULL COMMENT '변경일련번호',
  `cr_img_ud_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차이미지심사구분코드',
  `cr_img_ud_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차이미지심사세부구분코드',
  `chbf_photo_rgtdt` date DEFAULT NULL COMMENT '변경전사진등록일자',
  `chaf_photo_rgtdt` date DEFAULT NULL COMMENT '변경후사진등록일자',
  `chbf_trdst` decimal(7,0) DEFAULT NULL COMMENT '변경전주행거리',
  `chaf_trdst` decimal(7,0) DEFAULT NULL COMMENT '변경후주행거리',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_spcl_img_ch_crr_00` (`plno`,`ch_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특별약관이미지변경이력';
