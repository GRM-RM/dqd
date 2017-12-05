package com.dqd.three.service;

import com.dqd.dubbo.service.DubboRedisService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.crypto.MacSpi;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

/**
 * A unique of the lion
 *
 * @author grm
 */
public class TopicConsumeListener implements MessageListener {

    @Autowired
    private DubboRedisService dubboRedisService;

    @Override
    public void onMessage(Message message) {
        TextMessage textMessage = (TextMessage) message;
        try {
            String text = textMessage.getText();
            //String username = text.substring(text.indexOf(":") + 1, text.indexOf("在"));
            dubboRedisService.set("login",text);
        } catch (JMSException e) {
            e.printStackTrace();
        }
    }
}
