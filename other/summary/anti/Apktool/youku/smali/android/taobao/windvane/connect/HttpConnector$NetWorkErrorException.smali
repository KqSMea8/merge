.class public Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;
.super Ljava/lang/Exception;
.source "HttpConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/XB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetWorkErrorException"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/XB;


# direct methods
.method public constructor <init>(Lc8/XB;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;->this$0:Lc8/XB;

    .line 400
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 401
    return-void
.end method
