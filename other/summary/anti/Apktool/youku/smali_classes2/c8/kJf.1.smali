.class public Lc8/kJf;
.super Ljava/lang/Object;
.source "ReportAckTask.java"

# interfaces
.implements Lc8/QJf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lJf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtopLister"
.end annotation


# instance fields
.field private idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/lJf;


# direct methods
.method public constructor <init>(Lc8/lJf;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lc8/lJf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    iput-object p1, p0, Lc8/kJf;->this$0:Lc8/lJf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lc8/kJf;->idList:Ljava/util/List;

    .line 94
    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/Map;)V
    .locals 8
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 99
    if-eqz p2, :cond_0

    const-string/jumbo v1, "re_msg"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 100
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    .line 101
    invoke-static {}, Lc8/cJf;->getReportProcessor()Lc8/cJf;

    move-result-object v1

    iget-object v2, p0, Lc8/kJf;->idList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lc8/cJf;->putMonitorRemoveTask(Ljava/util/List;)V

    .line 102
    const-string/jumbo v1, "MKT"

    const-string/jumbo v2, "upload"

    invoke-static {v1, v2}, Lc8/dKf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "MKT"

    const-string/jumbo v2, "aac"

    iget-object v3, p0, Lc8/kJf;->idList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v4, v3

    invoke-static {v1, v2, v4, v5}, Lc8/dKf;->commitCount(Ljava/lang/String;Ljava/lang/String;D)V

    .line 104
    const-string/jumbo v1, "MonitorManager"

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "uploadAck success"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :goto_1
    invoke-static {}, Lc8/cJf;->getReportProcessor()Lc8/cJf;

    move-result-object v1

    iget-object v2, p0, Lc8/kJf;->this$0:Lc8/lJf;

    invoke-virtual {v1, v2, v6, v6}, Lc8/cJf;->putMonitorTask(Lc8/eJf;ZZ)V

    .line 112
    return-void

    .line 99
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/cJf;->getReportProcessor()Lc8/cJf;

    move-result-object v1

    iget-object v2, p0, Lc8/kJf;->idList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lc8/cJf;->putMonitorReturnTask(Ljava/util/List;)V

    .line 108
    const-string/jumbo v1, "MKT"

    const-string/jumbo v2, "upload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lc8/dKf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "MonitorManager"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "uploadAck failed: "

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
