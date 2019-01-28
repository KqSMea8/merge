.class public interface abstract Lc8/Ncq;
.super Ljava/lang/Object;
.source "FrameBuilder.java"

# interfaces
.implements Lc8/Ocq;


# virtual methods
.method public abstract setFin(Z)V
.end method

.method public abstract setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V
.end method

.method public abstract setPayload(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract setTransferemasked(Z)V
.end method
