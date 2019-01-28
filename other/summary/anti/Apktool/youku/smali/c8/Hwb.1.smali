.class public Lc8/Hwb;
.super Ljava/lang/Object;
.source "PageLoader.java"

# interfaces
.implements Lc8/Vxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qwb;->processWeexCache(Ljava/lang/String;[BLc8/Pwb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qwb;

.field final synthetic val$cachePerf:Lc8/kwb;

.field final synthetic val$callback:Lc8/Pwb;

.field final synthetic val$pageName:Ljava/lang/String;

.field final synthetic val$template:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Qwb;Ljava/lang/String;Lc8/kwb;Lc8/Pwb;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qwb;

    .prologue
    .line 150
    iput-object p1, p0, Lc8/Hwb;->this$0:Lc8/Qwb;

    iput-object p2, p0, Lc8/Hwb;->val$pageName:Ljava/lang/String;

    iput-object p3, p0, Lc8/Hwb;->val$cachePerf:Lc8/kwb;

    iput-object p4, p0, Lc8/Hwb;->val$callback:Lc8/Pwb;

    iput-object p5, p0, Lc8/Hwb;->val$template:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 5

    .prologue
    .line 153
    const-string/jumbo v1, "Page_Cache"

    const-string/jumbo v2, "page loader canceled"

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 155
    .local v0, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "pageName"

    iget-object v2, p0, Lc8/Hwb;->val$pageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lc8/Hwb;->val$cachePerf:Lc8/kwb;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-111113"

    const-string/jumbo v4, "cache process canceled"

    invoke-virtual {v1, v2, v3, v4}, Lc8/kwb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lc8/Hwb;->val$callback:Lc8/Pwb;

    iget-object v2, p0, Lc8/Hwb;->val$template:Ljava/lang/String;

    invoke-interface {v1, v2}, Lc8/Pwb;->onFinished(Ljava/lang/String;)V

    .line 158
    return-void
.end method
