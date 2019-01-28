.class public Lc8/tof;
.super Landroid/os/AsyncTask;
.source "LightweightMtopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uof;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/xof;)V
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uof;

.field final synthetic val$api:Ljava/lang/String;

.field final synthetic val$listener:Lc8/xof;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/uof;Ljava/lang/String;Ljava/util/Map;Lc8/xof;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lc8/tof;->this$0:Lc8/uof;

    iput-object p2, p0, Lc8/tof;->val$api:Ljava/lang/String;

    iput-object p3, p0, Lc8/tof;->val$map:Ljava/util/Map;

    iput-object p4, p0, Lc8/tof;->val$listener:Lc8/xof;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/tof;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 47
    :try_start_0
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->application:Landroid/app/Application;

    iget-object v1, p0, Lc8/tof;->this$0:Lc8/uof;

    iget-object v2, p0, Lc8/tof;->val$api:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/uof;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/tof;->val$map:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lc8/hpf;->getMtopResponse(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/tof;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/tof;->val$listener:Lc8/xof;

    if-eqz v0, :cond_0

    .line 55
    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p0, Lc8/tof;->val$listener:Lc8/xof;

    invoke-interface {v0, p1}, Lc8/xof;->onSuccess(Lorg/json/JSONObject;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lc8/tof;->val$listener:Lc8/xof;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc8/xof;->onError(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
