.class public Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;
.super Ljava/lang/Exception;
.source "HttpConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/XB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpsErrorException"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/XB;


# direct methods
.method public constructor <init>(Lc8/XB;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;->this$0:Lc8/XB;

    .line 393
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 394
    return-void
.end method
