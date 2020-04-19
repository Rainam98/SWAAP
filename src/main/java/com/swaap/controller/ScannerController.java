package com.swaap.controller;

import com.google.zxing.*;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import sun.misc.BASE64Decoder;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

@RestController
@RequestMapping("api")
@CrossOrigin(value = "null")
public class ScannerController {

    @PostMapping("/user/decode")
    public ResponseEntity<String> decode(@RequestBody String imageData) {
        getImage(imageData);
//        File codeImage = new File("src/tmp/code.png");
//        if (codeImage.exists())
//            codeImage.delete();
        return new ResponseEntity<String>(decodeImage(), HttpStatus.OK);
    }

    private void getImage(String imageData) {
        try {
// tokenize the data
            String[] parts = imageData.split(",");
            String imageString = parts[1];

// create a buffered image
            BufferedImage image = null;
            byte[] imageByte;

            BASE64Decoder decoder = new BASE64Decoder();
            imageByte = decoder.decodeBuffer(imageString);
            ByteArrayInputStream bis = new ByteArrayInputStream(imageByte);
            image = ImageIO.read(bis);
            bis.close();

// write the image to a file
            File outputfile = new File("src/tmp/code.png");
            ImageIO.write(image, "png", outputfile);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String decodeImage() {
        InputStream barCodeInputStream = null;
        try {
            barCodeInputStream = new FileInputStream("src/tmp/code.png");

            BufferedImage barCodeBufferedImage = ImageIO.read(barCodeInputStream);

            LuminanceSource source = new BufferedImageLuminanceSource(barCodeBufferedImage);
            BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));
            Reader reader = new MultiFormatReader();
            Result result = reader.decode(bitmap);
            return "{\"output\": \"" + result.getText() + "\"}";
        } catch (Exception e) {
            e.printStackTrace();
            return "{\"output\": \"error decoding image\"}";
        }
    }
}
