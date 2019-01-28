.class public Lc8/KWp;
.super Ljava/lang/Object;
.source "AgooFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QWp;->reportCacheMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QWp;


# direct methods
.method constructor <init>(Lc8/QWp;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lc8/KWp;->this$0:Lc8/QWp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 346
    iget-object v3, p0, Lc8/KWp;->this$0:Lc8/QWp;

    invoke-static {v3}, Lc8/QWp;->access$100(Lc8/QWp;)Lc8/dXp;

    move-result-object v3

    invoke-virtual {v3}, Lc8/dXp;->getUnReportMsg()Ljava/util/ArrayList;

    move-result-object v1

    .line 347
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/android/agoo/common/MsgDO;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 348
    const-string/jumbo v3, "AgooFactory"

    const-string/jumbo v4, "reportCacheMsg"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "size"

    aput-object v7, v5, v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/DWp;

    .line 350
    .local v2, "msg":Lc8/DWp;
    if-eqz v2, :cond_0

    .line 351
    iput-boolean v8, v2, Lc8/DWp;->isFromCache:Z

    .line 352
    iget-object v3, p0, Lc8/KWp;->this$0:Lc8/QWp;

    iget-object v3, v3, Lc8/QWp;->notifyManager:Lc8/UWp;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lc8/UWp;->report(Lc8/DWp;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto :goto_0

    .line 357
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "msg":Lc8/DWp;
    :cond_1
    return-void
.end method
