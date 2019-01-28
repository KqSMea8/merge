.class public Lc8/DXo;
.super Lc8/MXf;
.source "WXConfigModule.java"


# instance fields
.field public appPackageKey:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public btype:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public guid:Ljava/lang/String;

.field public idfa:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public operator:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public osVer:Ljava/lang/String;

.field public ouid:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public scale:Ljava/lang/String;

.field public security:Ljava/lang/String;

.field public time:Ljava/lang/Long;

.field public ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 25
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/DXo;->appPackageKey:Ljava/lang/String;

    .line 26
    sget-object v0, Lc8/NHg;->brand:Ljava/lang/String;

    iput-object v0, p0, Lc8/DXo;->brand:Ljava/lang/String;

    .line 27
    sget-object v0, Lc8/NHg;->btype:Ljava/lang/String;

    iput-object v0, p0, Lc8/DXo;->btype:Ljava/lang/String;

    .line 28
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/DXo;->deviceId:Ljava/lang/String;

    .line 29
    sget-object v0, Lc8/Dfh;->GUID:Ljava/lang/String;

    iput-object v0, p0, Lc8/DXo;->guid:Ljava/lang/String;

    .line 31
    sget-object v0, Lc8/NHg;->network:Ljava/lang/String;

    iput-object v0, p0, Lc8/DXo;->network:Ljava/lang/String;

    .line 32
    sget-object v0, Lc8/NHg;->operator:Ljava/lang/String;

    iput-object v0, p0, Lc8/DXo;->operator:Ljava/lang/String;

    .line 33
    sget-object v0, Lc8/NHg;->os:Ljava/lang/String;

    iput-object v0, p0, Lc8/DXo;->os:Ljava/lang/String;

    .line 34
    sget-object v0, Lc8/NHg;->os_ver:Ljava/lang/String;

    iput-object v0, p0, Lc8/DXo;->osVer:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/DXo;->ouid:Ljava/lang/String;

    .line 36
    sget-object v0, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    iput-object v0, p0, Lc8/DXo;->pid:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lc8/NHg;->ht:I

    sget v2, Lc8/NHg;->wt:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lc8/NHg;->ht:I

    sget v2, Lc8/NHg;->wt:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/DXo;->resolution:Ljava/lang/String;

    .line 39
    sget-object v0, Lc8/Dfh;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lc8/DXo;->ver:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Lc8/qJj;->TIMESTAMP:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lc8/DXo;->time:Ljava/lang/Long;

    return-void

    .line 25
    :cond_0
    const-string/jumbo v0, "com.youku.phone"

    goto :goto_0
.end method


# virtual methods
.method public getConfig(Lc8/EWf;)V
    .locals 4
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 47
    .local v0, "configJson":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "guid"

    sget-object v3, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v2, "utdid"

    sget-object v3, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 50
    .local v1, "sysinfo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "appPackageKey"

    iget-object v3, p0, Lc8/DXo;->appPackageKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v2, "brand"

    iget-object v3, p0, Lc8/DXo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v2, "btype"

    iget-object v3, p0, Lc8/DXo;->btype:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v2, "deviceId"

    iget-object v3, p0, Lc8/DXo;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v2, "guid"

    iget-object v3, p0, Lc8/DXo;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v2, "idfa"

    iget-object v3, p0, Lc8/DXo;->idfa:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v2, "network"

    iget-object v3, p0, Lc8/DXo;->network:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v2, "operator"

    iget-object v3, p0, Lc8/DXo;->operator:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v2, "os"

    iget-object v3, p0, Lc8/DXo;->os:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v2, "osVer"

    iget-object v3, p0, Lc8/DXo;->osVer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v2, "ouid"

    iget-object v3, p0, Lc8/DXo;->ouid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v2, "pid"

    iget-object v3, p0, Lc8/DXo;->pid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v2, "resolution"

    iget-object v3, p0, Lc8/DXo;->resolution:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v2, "scale"

    iget-object v3, p0, Lc8/DXo;->scale:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v2, "ver"

    iget-object v3, p0, Lc8/DXo;->ver:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v2, "security"

    iget-object v3, p0, Lc8/DXo;->security:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v2, "time"

    iget-object v3, p0, Lc8/DXo;->time:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v2, "systeminfo"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
