.class public Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;
.super Ljava/lang/Exception;
.source "HttpConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/XB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpOverFlowException"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/XB;


# direct methods
.method public constructor <init>(Lc8/XB;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;->this$0:Lc8/XB;

    .line 407
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 408
    return-void
.end method
