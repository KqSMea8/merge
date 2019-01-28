.class public Lc8/DWp;
.super Ljava/lang/Object;
.source "MsgDO.java"


# instance fields
.field public agooFlag:Z

.field public body:Ljava/lang/String;

.field public dataId:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public extData:Ljava/lang/String;

.field public fromAppkey:Ljava/lang/String;

.field public fromPkg:Ljava/lang/String;

.field public isFromCache:Z

.field public isStartProc:Z

.field public messageSource:Ljava/lang/String;

.field public msgIds:Ljava/lang/String;

.field public msgStatus:Ljava/lang/String;

.field public notifyEnable:Ljava/lang/String;

.field public pack:Ljava/lang/String;

.field public removePacks:Ljava/lang/String;

.field public reportStr:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lc8/DWp;->isStartProc:Z

    .line 28
    iput-boolean v0, p0, Lc8/DWp;->isFromCache:Z

    return-void
.end method


# virtual methods
.method public getMsgInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "msgIds"

    iget-object v3, p0, Lc8/DWp;->msgIds:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v2, "extData"

    iget-object v3, p0, Lc8/DWp;->extData:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v2, "body"

    iget-object v3, p0, Lc8/DWp;->body:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v2, "dataId"

    iget-object v3, p0, Lc8/DWp;->dataId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v2, "pack"

    iget-object v3, p0, Lc8/DWp;->pack:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v2, "messageSource"

    iget-object v3, p0, Lc8/DWp;->messageSource:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v2, p0, Lc8/DWp;->removePacks:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    const-string/jumbo v2, "removePacks"

    iget-object v3, p0, Lc8/DWp;->removePacks:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    iget-object v2, p0, Lc8/DWp;->errorCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    const-string/jumbo v2, "errorCode"

    iget-object v3, p0, Lc8/DWp;->errorCode:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    iget-object v2, p0, Lc8/DWp;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lc8/DWp;->type:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 51
    .local v0, "dataJson":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
