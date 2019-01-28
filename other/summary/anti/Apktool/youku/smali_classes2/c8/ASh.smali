.class public Lc8/ASh;
.super Ljava/lang/Object;
.source "ActionJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/BSh;->startDiagnose(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/BSh;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/BSh;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/BSh;

    .prologue
    .line 137
    iput-object p1, p0, Lc8/ASh;->this$0:Lc8/BSh;

    iput-object p2, p0, Lc8/ASh;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 143
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lc8/ASh;->val$params:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "content"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 148
    .local v2, "feedbackContent":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 150
    new-instance v1, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 151
    .local v1, "extData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "feedback"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :try_start_1
    const-class v4, Lc8/vdn;

    invoke-static {v4}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    .line 154
    .local v0, "dataSource":Lc8/vdn;
    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v4, "utdid"

    invoke-interface {v0}, Lc8/vdn;->getUtdid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    .end local v0    # "dataSource":Lc8/vdn;
    :cond_0
    :goto_0
    const-string/jumbo v4, "title"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v4, "content"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v4, p0, Lc8/ASh;->this$0:Lc8/BSh;

    invoke-static {v4}, Lc8/BSh;->access$000(Lc8/BSh;)Lc8/TTh;

    move-result-object v4

    invoke-virtual {v4}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lc8/jOf;->uploadLogFile(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 164
    .end local v1    # "extData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "feedbackContent":Ljava/lang/String;
    .end local v3    # "jsObj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "extData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "feedbackContent":Ljava/lang/String;
    .restart local v3    # "jsObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 146
    .end local v1    # "extData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "feedbackContent":Ljava/lang/String;
    .end local v3    # "jsObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    goto :goto_1
.end method
