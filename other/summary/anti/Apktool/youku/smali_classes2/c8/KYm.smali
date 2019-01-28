.class public Lc8/KYm;
.super Ljava/lang/Object;
.source "PoplayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/poplayer/ui/activity/PoplayerActivity;->initDebugUtil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;


# direct methods
.method public constructor <init>(Lcom/youku/poplayer/ui/activity/PoplayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/poplayer/ui/activity/PoplayerActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lc8/KYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lc8/KYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    const-class v2, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "http://tb.cn/n/poplayerdebug?windvane=%s&log_cache_size=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lc8/KYm;->this$0:Lcom/youku/poplayer/ui/activity/PoplayerActivity;

    invoke-virtual {v1, v0}, Lcom/youku/poplayer/ui/activity/PoplayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method
