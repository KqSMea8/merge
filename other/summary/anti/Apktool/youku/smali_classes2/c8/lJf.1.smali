.class public Lc8/lJf;
.super Lc8/eJf;
.source "ReportAckTask.java"

# interfaces
.implements Lc8/fJf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kJf;
    }
.end annotation


# static fields
.field private static final UPLOAD_MAX:I = 0x64


# instance fields
.field private finish:Z

.field private uploadList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/UIf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/eJf;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/lJf;->uploadList:Ljava/util/Queue;

    .line 90
    return-void
.end method


# virtual methods
.method public afterHanging()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lc8/lJf;->finish:Z

    return v0
.end method

.method public dumpAck()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lc8/lJf;->uploadList:Ljava/util/Queue;

    const/4 v1, -0x1

    invoke-static {v1}, Lc8/SIf;->get(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 59
    return-void
.end method

.method public execute()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lc8/lJf;->dumpAck()V

    .line 35
    invoke-virtual {p0}, Lc8/lJf;->report()V

    .line 36
    return-void
.end method

.method public onHanging(Lc8/fJf;)V
    .locals 1
    .param p1, "current"    # Lc8/fJf;

    .prologue
    .line 45
    if-ne p1, p0, :cond_1

    .line 46
    invoke-virtual {p0}, Lc8/lJf;->report()V

    .line 50
    .end local p1    # "current":Lc8/fJf;
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local p1    # "current":Lc8/fJf;
    :cond_1
    instance-of v0, p1, Lc8/lJf;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Lc8/lJf;

    .end local p1    # "current":Lc8/fJf;
    invoke-virtual {p1}, Lc8/lJf;->dumpAck()V

    goto :goto_0
.end method

.method public report()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 67
    iget-object v6, p0, Lc8/lJf;->uploadList:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    if-gtz v6, :cond_0

    .line 68
    iput-boolean v11, p0, Lc8/lJf;->finish:Z

    .line 88
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v3, "idList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 74
    .local v5, "jArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v6, 0x64

    if-ge v2, v6, :cond_1

    .line 75
    iget-object v6, p0, Lc8/lJf;->uploadList:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/UIf;

    .line 76
    .local v4, "item":Lc8/UIf;
    if-eqz v4, :cond_1

    .line 77
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v4}, Lc8/UIf;->toJson()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v4    # "item":Lc8/UIf;
    :cond_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "data":Ljava/lang/String;
    new-instance v6, Lc8/kJf;

    invoke-direct {v6, p0, v3}, Lc8/kJf;-><init>(Lc8/lJf;Ljava/util/List;)V

    invoke-static {v0, v6}, Lc8/VIf;->reportAckByMtop(Ljava/lang/String;Lc8/QJf;)V

    .line 82
    const-string/jumbo v6, "MonitorManager"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "reportAck data: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "idList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    .end local v5    # "jArray":Lcom/alibaba/fastjson/JSONArray;
    :goto_2
    iput-boolean v10, p0, Lc8/lJf;->finish:Z

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "MonitorManager"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v1, v7}, Lc8/ZJf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 85
    iput-boolean v11, p0, Lc8/lJf;->finish:Z

    goto :goto_2
.end method

.method public type()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x3

    return v0
.end method
