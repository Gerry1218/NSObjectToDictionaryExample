//
//  GChatMessage.m
//  DBDemo
//
//  Created by Gerry on 14-9-4.
//  Copyright (c) 2014年 Gerry. All rights reserved.
//

#import "XXMessage.h"

@implementation XXBaseMessage

@end

@implementation XXMessage


+ (XXMessage *)fakeMessage {
    XXMessage *msg = [[XXMessage alloc] init];
    msg.isReceive = YES;
    msg.isCC = NO;
    msg.bSending = NO;
    msg.sessionUri = @"sip:PG81794187@fetion.com.cn;p=2952";
    msg.sessionType = EChatSessionPgGroup;
    msg.speakerUri = @"sip:1664155984@fetion.com.cn;p=30236";
    msg.speakerUserID = @"1939598030";
    msg.msgId = @"9EDBCBC4-3482-409D-85ED-0D9DA59512E6";
    msg.msgContent = @"/疑问/鼓掌/天真/嘘";
    msg.originalContent = @"<Font><OBJECT TYPE=\"CE\" NAME=\"疑问\" ID=\"0734845E6BD0760EA258109B28E11FF0\">/疑问</OBJECT></Font>";
    msg.status = EMessageStatusRcvOk;
    msg.avPromptMsgType = EAVPromptOutSession;
    msg.msgTime = 1409650426.0;
    msg.rqMsgId = 58820375579;
    
    return msg;
}

@end
