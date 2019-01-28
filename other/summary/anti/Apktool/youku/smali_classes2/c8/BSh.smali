.class public Lc8/BSh;
.super Lc8/PSh;
.source "ActionJSBridge.java"


# instance fields
.field private mWrapper:Lc8/TTh;


# direct methods
.method public constructor <init>(Lc8/TTh;)V
    .locals 0
    .param p1, "wrapper"    # Lc8/TTh;

    .prologue
    .line 29
    invoke-direct {p0}, Lc8/PSh;-><init>()V

    .line 30
    iput-object p1, p0, Lc8/BSh;->mWrapper:Lc8/TTh;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lc8/BSh;)Lc8/TTh;
    .locals 1
    .param p0, "x0"    # Lc8/BSh;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/BSh;->mWrapper:Lc8/TTh;

    return-object v0
.end method


# virtual methods
.method public closeActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/BSh;->mWrapper:Lc8/TTh;

    invoke-virtual {v0}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lc8/FSh;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lc8/BSh;->mWrapper:Lc8/TTh;

    new-instance v1, Lc8/vSh;

    invoke-direct {v1, p0, p1}, Lc8/vSh;-><init>(Lc8/BSh;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/TTh;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lc8/PSh;->closeActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeolocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v2, p0, Lc8/BSh;->mWrapper:Lc8/TTh;

    invoke-virtual {v2}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lc8/CDn;->getInstance(Landroid/content/Context;)Lc8/CDn;

    move-result-object v1

    .line 95
    .local v1, "locationManager":Lc8/CDn;
    new-instance v2, Lc8/zSh;

    invoke-direct {v2, p0}, Lc8/zSh;-><init>(Lc8/BSh;)V

    invoke-virtual {v1, v0, v2}, Lc8/CDn;->getLocationInfo(Landroid/content/Context;Lc8/BDn;)V

    .line 132
    invoke-super {p0, p1}, Lc8/PSh;->getGeolocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setShareInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lc8/BSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 56
    .local v1, "obj":Lorg/json/JSONObject;
    new-instance v0, Lc8/QTh;

    invoke-direct {v0}, Lc8/QTh;-><init>()V

    .line 57
    .local v0, "info":Lc8/QTh;
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/QTh;->title:Ljava/lang/String;

    .line 58
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/QTh;->url:Ljava/lang/String;

    .line 59
    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/QTh;->image:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lc8/BSh;->mWrapper:Lc8/TTh;

    invoke-virtual {v2, v0}, Lc8/TTh;->setShareInfo(Lc8/QTh;)V

    .line 61
    invoke-super {p0, p1}, Lc8/PSh;->setShareInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setTitleBar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v1, p0, Lc8/BSh;->mWrapper:Lc8/TTh;

    invoke-virtual {v1}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lc8/FSh;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lc8/BSh;->mWrapper:Lc8/TTh;

    invoke-virtual {v1}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lc8/Qn;

    .line 68
    .local v0, "activity":Lc8/Qn;
    new-instance v1, Lc8/wSh;

    invoke-direct {v1, p0, p1, v0}, Lc8/wSh;-><init>(Lc8/BSh;Ljava/lang/String;Lc8/Qn;)V

    invoke-virtual {v0, v1}, Lc8/Qn;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 88
    .end local v0    # "activity":Lc8/Qn;
    :cond_0
    invoke-super {p0, p1}, Lc8/PSh;->setTitleBar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public startDiagnose(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/ASh;

    invoke-direct {v1, p0, p1}, Lc8/ASh;-><init>(Lc8/BSh;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    invoke-super {p0, p1}, Lc8/PSh;->startDiagnose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
