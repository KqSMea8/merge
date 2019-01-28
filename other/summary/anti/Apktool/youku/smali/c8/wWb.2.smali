.class public Lc8/wWb;
.super Landroid/os/AsyncTask;
.source "OnlineMonitorGodeyeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xWb;->doCallback()V
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
.field final synthetic this$0:Lc8/xWb;


# direct methods
.method constructor <init>(Lc8/xWb;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lc8/wWb;->this$0:Lc8/xWb;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/wWb;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-static {}, Lc8/msf;->startPerformanceTrace()Z

    .line 53
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v0

    iget-object v1, p0, Lc8/wWb;->this$0:Lc8/xWb;

    invoke-static {v1}, Lc8/xWb;->access$000(Lc8/xWb;)Lc8/AWb;

    move-result-object v1

    new-instance v2, Lc8/bWb;

    const/4 v3, 0x3

    const-string/jumbo v4, "onlinemonitor-start-success"

    invoke-direct {v2, v3, v4, v5}, Lc8/bWb;-><init>(ILjava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1, v2}, Lc8/fWb;->response(Lc8/cWb;Lc8/bWb;)V

    .line 55
    return-object v5
.end method
