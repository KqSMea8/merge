.class public Lc8/wRf;
.super Landroid/os/AsyncTask;
.source "UpdateDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yRf;->addUpdateInfo(Ljava/lang/String;)V
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
.field final synthetic this$0:Lc8/yRf;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/yRf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lc8/wRf;->this$0:Lc8/yRf;

    iput-object p2, p0, Lc8/wRf;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 438
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/wRf;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 442
    iget-object v3, p0, Lc8/wRf;->val$url:Ljava/lang/String;

    const-string/jumbo v4, "get_bundle_install_data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    invoke-static {}, Lc8/yRf;->access$400()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "testurl"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/zRf;

    .line 445
    .local v2, "updateListener":Lc8/zRf;
    if-eqz v2, :cond_0

    .line 446
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 447
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "url"

    iget-object v4, p0, Lc8/wRf;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v3, Lc8/rRf;->SCAN:Ljava/lang/String;

    invoke-interface {v2, v5, v1, v3}, Lc8/zRf;->onUpdate(ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 459
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "updateListener":Lc8/zRf;
    :cond_0
    :goto_0
    return-object v6

    .line 455
    :cond_1
    new-instance v3, Lc8/DRf;

    invoke-direct {v3}, Lc8/DRf;-><init>()V

    iget-object v4, p0, Lc8/wRf;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/DRf;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 457
    iget-object v3, p0, Lc8/wRf;->this$0:Lc8/yRf;

    sget-object v4, Lc8/rRf;->SCAN:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v6, v5}, Lc8/yRf;->addUpdateInfo(Ljava/lang/String;Ljava/lang/String;Lc8/oRf;[Ljava/lang/String;)V

    goto :goto_0
.end method
