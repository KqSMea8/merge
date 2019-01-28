.class public Lc8/Hzb;
.super Ljava/lang/Object;
.source "UTOrangeConfMgr.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jzb;->requestOnlineConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jzb;


# direct methods
.method constructor <init>(Lc8/Jzb;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lc8/Hzb;->this$0:Lc8/Jzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "aGroupname"    # Ljava/lang/String;
    .param p2, "aIsCached"    # Z

    .prologue
    .line 30
    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "aGroupname"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "aIsCached"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/ctf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 33
    .local v0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lc8/Hzb;->this$0:Lc8/Jzb;

    invoke-static {v1, p1, v0}, Lc8/Jzb;->access$001(Lc8/Jzb;Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    :cond_0
    return-void
.end method
