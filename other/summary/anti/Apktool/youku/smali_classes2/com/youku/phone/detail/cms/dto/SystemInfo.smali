.class public Lcom/youku/phone/detail/cms/dto/SystemInfo;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "SystemInfo.java"


# instance fields
.field public appPackageId:Ljava/lang/String;

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
    .line 22
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 23
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->appPackageId:Ljava/lang/String;

    .line 24
    sget-object v0, Lc8/NHg;->brand:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->brand:Ljava/lang/String;

    .line 25
    sget-object v0, Lc8/NHg;->btype:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->btype:Ljava/lang/String;

    .line 26
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getUtdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->deviceId:Ljava/lang/String;

    .line 27
    sget-object v0, Lc8/Dfh;->GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->guid:Ljava/lang/String;

    .line 29
    sget-object v0, Lc8/NHg;->network:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->network:Ljava/lang/String;

    .line 30
    sget-object v0, Lc8/NHg;->operator:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->operator:Ljava/lang/String;

    .line 31
    sget-object v0, Lc8/NHg;->os:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->os:Ljava/lang/String;

    .line 32
    sget-object v0, Lc8/NHg;->os_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->osVer:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->ouid:Ljava/lang/String;

    .line 34
    sget-object v0, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->pid:Ljava/lang/String;

    .line 35
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

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->resolution:Ljava/lang/String;

    .line 37
    sget-object v0, Lc8/Dfh;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->ver:Ljava/lang/String;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Lc8/qJj;->TIMESTAMP:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->time:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "sysinfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "appPackageId"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->appPackageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v1, "brand"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v1, "btype"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->btype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v1, "deviceId"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v1, "device"

    const-string/jumbo v2, "ANDROID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v1, "guid"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "idfa"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->idfa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "network"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->network:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "operator"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v1, "os"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->os:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "osVer"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->osVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v1, "ouid"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->ouid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "pid"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v1, "scale"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->scale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v1, "ver"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->ver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v1, "security"

    iget-object v2, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->security:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/phone/detail/cms/dto/SystemInfo;->time:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {v0}, Lc8/IDj;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
