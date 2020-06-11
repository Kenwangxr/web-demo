package com.example.demo.netty;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

public class EchoHandler extends ChannelInboundHandlerAdapter {

    int count = 0;
    @Override
    public void channelRead(ChannelHandlerContext channelHandlerContext, Object msg){
        String body = (String)msg;
        System.out.println("this is " + ++count + "receive client msg:"+msg);
        body  += "$_";
        channelHandlerContext.writeAndFlush(body.getBytes());
    }
    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        super.exceptionCaught(ctx, cause);
        cause.printStackTrace();
        ctx.close();
    }
}
