.class public interface abstract Lcom/taobao/windvane/zipdownload/DownLoadListener;
.super Ljava/lang/Object;
.source "DownLoadListener.java"


# static fields
.field public static final TOKEN_2G_NOT_UPDATE:I = 0x8

.field public static final TOKEN_ALL_CONFIG:I = 0x1

.field public static final TOKEN_NOT_CONTIONUE:I = 0xa

.field public static final TOKEN_NOT_NEED_UPDATE:I = 0x9

.field public static final TOKEN_UPDATE_CANCEL:I = 0x7

.field public static final TOKEN_ZIPAPP:I = 0x4

.field public static final TOKEN_ZIPAPP_DELTA:I = 0x2


# virtual methods
.method public abstract callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
