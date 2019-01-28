.class public Lc8/yqb;
.super Ljava/lang/Object;
.source "WXCalendarModule.java"

# interfaces
.implements Lc8/Bqb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Cqb;->checkEvent(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
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
    .line 84
    iput-object p1, p0, Lc8/yqb;->this$0:Lc8/Cqb;

    iput-object p2, p0, Lc8/yqb;->val$options:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lc8/yqb;->val$success:Lc8/EWf;

    iput-object p4, p0, Lc8/yqb;->val$failure:Lc8/EWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsDenied(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lc8/yqb;->val$failure:Lc8/EWf;

    iget-object v1, p0, Lc8/yqb;->this$0:Lc8/Cqb;

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

    .line 106
    return-void
.end method

.method public onPermissionsGranted()V
    .locals 7

    .prologue
    .line 86
    iget-object v5, p0, Lc8/yqb;->val$options:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v6, "batch"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    new-instance v4, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 88
    .local v4, "retArray":Lcom/alibaba/fastjson/JSONArray;
    iget-object v5, p0, Lc8/yqb;->val$options:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v6, "batch"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 89
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 90
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 91
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    iget-object v5, p0, Lc8/yqb;->this$0:Lc8/Cqb;

    invoke-static {v5, v2}, Lc8/Cqb;->access$200(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 92
    .local v3, "ret":Ljava/lang/Boolean;
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "ret":Ljava/lang/Boolean;
    :cond_0
    iget-object v5, p0, Lc8/yqb;->val$success:Lc8/EWf;

    invoke-interface {v5, v4}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 102
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "i":I
    .end local v4    # "retArray":Lcom/alibaba/fastjson/JSONArray;
    :goto_1
    return-void

    .line 96
    :cond_1
    iget-object v5, p0, Lc8/yqb;->this$0:Lc8/Cqb;

    iget-object v6, p0, Lc8/yqb;->val$options:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v5, v6}, Lc8/Cqb;->access$200(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    iget-object v5, p0, Lc8/yqb;->val$success:Lc8/EWf;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_2
    iget-object v5, p0, Lc8/yqb;->val$success:Lc8/EWf;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_1
.end method
