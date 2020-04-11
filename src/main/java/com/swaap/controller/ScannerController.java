package com.swaap.controller;

import com.google.zxing.*;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.FileInputStream;
import java.io.InputStream;

@RestController
@RequestMapping("api")
public class ScannerController {

    @GetMapping("/decode")
    public String decode(@RequestBody String imageData) {
        System.out.println(imageData);
//        getImage();
//        decodeImage();
        return "decoded";
    }

    private String decodeImage() {
        InputStream barCodeInputStream = null;
        try {
            barCodeInputStream = new FileInputStream("./tmp/code.png");

            BufferedImage barCodeBufferedImage = ImageIO.read(barCodeInputStream);

            LuminanceSource source = new BufferedImageLuminanceSource(barCodeBufferedImage);
            BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));
            Reader reader = new MultiFormatReader();
            Result result = reader.decode(bitmap);
            return result.getText();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
