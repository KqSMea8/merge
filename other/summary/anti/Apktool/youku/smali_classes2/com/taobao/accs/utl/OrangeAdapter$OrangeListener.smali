.class public Lcom/taobao/accs/utl/OrangeAdapter$OrangeListener;
.super Ljava/lang/Object;
.source "OrangeAdapter.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/utl/OrangeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "fromCache"    # Z

    .prologue
    const/4 v6, 0x0

    .line 273
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 274
    const-string/jumbo v1, "OrangeAdapter"

    const-string/jumbo v2, "onConfigUpdate context null"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    :try_start_0
    const-string/jumbo v1, "OrangeAdapter"

    const-string/jumbo v2, "onConfigUpdate"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "namespace"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    if-eqz p1, :cond_0

    const-string/jumbo v1, "accs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->checkAccsEnabled()V

    .line 282
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfigForAccs()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "OrangeAdapter"

    const-string/jumbo v2, "onConfigUpdate"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
