.class public Lc8/yWb;
.super Landroid/os/AsyncTask;
.source "OnlineMonitorGodeyeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zWb;->doCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zWb;


# direct methods
.method constructor <init>(Lc8/zWb;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lc8/yWb;->this$0:Lc8/zWb;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/yWb;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 78
    invoke-static {}, Lc8/msf;->stopPerformanceTrace()Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    move-result-object v0

    .line 79
    .local v0, "statInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    iget-object v2, p0, Lc8/yWb;->this$0:Lc8/zWb;

    invoke-static {v2}, Lc8/zWb;->access$100(Lc8/zWb;)Lc8/AWb;

    move-result-object v2

    new-instance v3, Lc8/bWb;

    const/4 v4, 0x3

    const-string/jumbo v5, "onlinemonitor-data-success"

    invoke-static {v0}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lc8/bWb;-><init>(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v1, v2, v3}, Lc8/fWb;->response(Lc8/cWb;Lc8/bWb;)V

    .line 81
    const/4 v1, 0x0

    return-object v1
.end method
