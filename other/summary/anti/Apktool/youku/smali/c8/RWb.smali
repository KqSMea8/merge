.class public interface abstract Lc8/RWb;
.super Ljava/lang/Object;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/SWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Packet"
.end annotation


# virtual methods
.method public abstract deserialize(Ljava/lang/String;)V
.end method

.method public abstract read(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract readData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract serialize()Ljava/lang/String;
.end method

.method public abstract write(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract writeData(Ljava/lang/String;Ljava/lang/Object;)V
.end method
