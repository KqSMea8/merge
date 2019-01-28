.class public interface abstract Lc8/Axf;
.super Ljava/lang/Object;
.source "FileLoader.java"


# static fields
.field public static final LOCAL_ASSET:I = 0x22

.field public static final LOCAL_BASE64:I = 0x28

.field public static final LOCAL_EXTENDED:I = 0x30

.field public static final LOCAL_FILE:I = 0x21

.field public static final LOCAL_RES:I = 0x24


# virtual methods
.method public abstract load(Lc8/Mxf;Ljava/lang/String;Ljava/util/Map;)Lc8/exf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mxf;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/exf;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/res/Resources$NotFoundException;,
            Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;
        }
    .end annotation
.end method
