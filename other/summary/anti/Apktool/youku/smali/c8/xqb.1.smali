.class public Lc8/xqb;
.super Ljava/lang/Object;
.source "WXCalendarModule.java"

# interfaces
.implements Lc8/Bqb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cqb;->addEvent(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Cqb;

.field final synthetic val$failure:Lc8/EWf;

.field final synthetic val$options:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$success:Lc8/EWf;


# direct methods
.method constructor <init>(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Cqb;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/xqb;->this$0:Lc8/Cqb;

    iput-object p2, p0, Lc8/xqb;->val$options:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lc8/xqb;->val$success:Lc8/EWf;

    iput-object p4, p0, Lc8/xqb;->val$failure:Lc8/EWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsDenied(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/xqb;->val$failure:Lc8/EWf;

    iget-object v1, p0, Lc8/xqb;->this$0:Lc8/Cqb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no permission:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Cqb;->access$100(Lc8/Cqb;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public onPermissionsGranted()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 39
    iget-object v3, p0, Lc8/xqb;->val$options:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "batch"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    iget-object v3, p0, Lc8/xqb;->val$options:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "batch"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 41
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 42
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 43
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    iget-object v3, p0, Lc8/xqb;->this$0:Lc8/Cqb;

    invoke-static {v3, v2}, Lc8/Cqb;->access$000(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;)Z

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    iget-object v3, p0, Lc8/xqb;->val$success:Lc8/EWf;

    invoke-interface {v3, v5}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 50
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 47
    :cond_1
    iget-object v3, p0, Lc8/xqb;->this$0:Lc8/Cqb;

    iget-object v4, p0, Lc8/xqb;->val$options:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v3, v4}, Lc8/Cqb;->access$000(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;)Z

    .line 48
    iget-object v3, p0, Lc8/xqb;->val$success:Lc8/EWf;

    invoke-interface {v3, v5}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_1
.end method
