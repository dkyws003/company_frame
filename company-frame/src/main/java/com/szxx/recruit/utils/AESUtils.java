package com.szxx.recruit.utils;

import java.security.SecureRandom;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;


/**
 * AES加解密
 */
public class AESUtils {

	/** 默认秘钥 */
    public static final String KEY = "NOPO3nzMD3dndwS0MccuMeXCHgVlGOoYyFwLdS24Im2e7YyhB0wrUsyYf0";
    //protected static final String KEY = "NOPO3nzMD3@#$^ds23435*dndwS0MccuM$%^&eXCHgVlGOoYyF";

    /**
     *  AES解密
     * @param encryptValue
     * 						待解密内容
     * @param key
     * 						秘钥
     * @return
     * @throws Exception
     */
    public static String decrypt(String encryptValue, String key) throws Exception {
        return aesDecryptByBytes(base64Decode(encryptValue), key);  
    }
    
    /**
     * AES加密
     *
     * @param value
     * 					待加密内容
     * @param key
     * 					秘钥
     * @return
     * @throws Exception
     */
    public static String encrypt(String value, String key) throws Exception {
        return base64Encode(aesEncryptToBytes(value, key));  
    }

	
    private static String base64Encode(byte[] bytes){  
        return Base64Utils.encrypt(bytes);  
    }  
      
    @SuppressWarnings("static-access")
    private static byte[] base64Decode(String base64Code) throws Exception{  
        return base64Code == null ? null : new Base64Utils().decrypt(base64Code);  
    }  
      
    private static byte[] aesEncryptToBytes(String content, String encryptKey) throws Exception {

        SecureRandom random = SecureRandom.getInstance("SHA1PRNG");
        random.setSeed(encryptKey.getBytes());

        KeyGenerator kgen = KeyGenerator.getInstance("AES");
        //kgen.init(128, new SecureRandom(encryptKey.getBytes()));
        kgen.init(128, random);
  
        Cipher cipher = Cipher.getInstance("AES");  
        cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(kgen.generateKey().getEncoded(), "AES"));  
          
        return cipher.doFinal(content.getBytes("utf-8"));  
    }  
      
    private static String aesDecryptByBytes(byte[] encryptBytes, String decryptKey) throws Exception {
        SecureRandom random = SecureRandom.getInstance("SHA1PRNG");
        random.setSeed(decryptKey.getBytes());
        KeyGenerator kgen = KeyGenerator.getInstance("AES");
       // kgen.init(128, new SecureRandom(decryptKey.getBytes()));
        kgen.init(128, random);

        Cipher cipher = Cipher.getInstance("AES");  
        cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(kgen.generateKey().getEncoded(), "AES"));  
        byte[] decryptBytes = cipher.doFinal(encryptBytes);  
          
        return new String(decryptBytes);  
    }


    public static void main(String[] args) {
        try {
            String ciphertext=AESUtils.encrypt("王小颖",KEY);
            System.out.println("加密:"+ciphertext);
            System.out.println("解密:"+AESUtils.decrypt(ciphertext,KEY));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}