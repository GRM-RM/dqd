package com.dqd.three.util;

import org.apache.activemq.command.ActiveMQTopic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;
import javax.jms.TextMessage;
import java.util.Date;

/**
 * A unique of the lion
 *
 * @author grm
 */
public class SendMessage {

    @Autowired
    private JmsTemplate jmsTemplate;
    @Autowired
    private ActiveMQTopic activeMQTopic;

    public void loginMsg(String username){
        jmsTemplate.send(activeMQTopic, new MessageCreator() {
            @Override
            public Message createMessage(Session session) throws JMSException {
                TextMessage textMessage = session.createTextMessage("用户:" + username + "在时间:" + new Date() + "登录了。");
                return textMessage;
            }
        });
    }
}
