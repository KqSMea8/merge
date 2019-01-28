.class public Lc8/TSh;
.super Lc8/PSh;
.source "UserBehaviourJSBridge.java"


# static fields
.field public static final UploadRequestCode:I = 0x22


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/PSh;-><init>()V

    .line 25
    iput-object p1, p0, Lc8/TSh;->mActivity:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lc8/TSh;->mView:Landroid/view/View;

    .line 27
    return-void
.end method


# virtual methods
.method public addCollectionVideo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public showShareView(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 33
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "error"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "showShareView is not supported. Please use windVane plugin instead!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v0}, Lc8/HTh;->generateParamsStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public showUploadVideoPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lc8/TSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    .local v0, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "topic"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "topicName":Ljava/lang/String;
    :try_start_0
    const-class v2, Lc8/Xgn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Xgn;

    iget-object v3, p0, Lc8/TSh;->mActivity:Landroid/app/Activity;

    const/16 v4, 0x22

    .line 49
    invoke-interface {v2, v3, v1, v4}, Lc8/Xgn;->gotoMyUploadVideoPageActivityForResult(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    const-string/jumbo v2, "{}"

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method
