.class public Landroid/taobao/windvane/file/NotEnoughSpace;
.super Ljava/io/IOException;
.source "NotEnoughSpace.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
