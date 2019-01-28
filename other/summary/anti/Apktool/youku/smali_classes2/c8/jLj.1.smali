.class public Lc8/jLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->initNetworkConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method constructor <init>(Lc8/KLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 755
    iput-object p1, p0, Lc8/jLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 758
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const-string/jumbo v2, "retry"

    const-string/jumbo v3, "false"

    invoke-virtual {v1, p1, v2, v3}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "httpIpRetry":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/qN;->setAllowHttpIpRetry(Z)V

    .line 762
    :cond_0
    return-void
.end method
