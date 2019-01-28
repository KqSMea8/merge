.class public Lcom/taobao/accs/net/SpdyConnection$3;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Lc8/tXp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/SpdyConnection;->initClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/SpdyConnection;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/SpdyConnection;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/taobao/accs/net/SpdyConnection$3;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLPublicKey(I[B)[B
    .locals 3
    .param p1, "i"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 674
    iget-object v0, p0, Lcom/taobao/accs/net/SpdyConnection$3;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/SpdyConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/accs/net/SpdyConnection$3;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/SpdyConnection;->mConfigTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/accs/net/SpdyConnection$3;->this$0:Lcom/taobao/accs/net/SpdyConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/SpdyConnection;->mAppkey:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/taobao/accs/utl/UtilityImpl;->staticBinarySafeDecryptNoB64(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method
