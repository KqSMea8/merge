.class public Lc8/GDj;
.super Ljava/lang/Object;
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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GDj;->appPackageId:Ljava/lang/String;

    .line 22
    sget-object v0, Lc8/NHg;->brand:Ljava/lang/String;

    iput-object v0, p0, Lc8/GDj;->brand:Ljava/lang/String;

    .line 23
    sget-object v0, Lc8/NHg;->btype:Ljava/lang/String;

    iput-object v0, p0, Lc8/GDj;->btype:Ljava/lang/String;

    .line 24
    invoke-static {}, Lc8/FDj;->getMtopInstance()Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getUtdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GDj;->deviceId:Ljava/lang/String;

    .line 25
    sget-object v0, Lc8/Dfh;->GUID:Ljava/lang/String;

    iput-object v0, p0, Lc8/GDj;->guid:Ljava/lang/String;

    .line 27
    sget-object v0, Lc8/NHg;->network:Ljava/lang/String;

    iput-object v0, p0, Lc8/GDj;->network:Ljava/lang/String;

    .line 28
    sget-object v0, Lc8/NHg;->operator:Ljava/lang/String;

    iput-object v0, p0, Lc8/GDj;->operator:Ljava/lang/String;

    .line 29
    sget-object v0, Lc8/NHg;->os:Ljava/lang/String;

    iput-object v0, p0, Lc8/GDj;->os:Ljava/lang/String;

    .line 30
    sget-object v0, Lc8/NHg;->os_ver:Ljava/lang/String;

    iput-object v0, p0, Lc8/GDj;->osVer:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/GDj;->ouid:Ljava/lang/String;

    .line 32
    sget-object v0, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    iput-object v0, p0, Lc8/GDj;->pid:Ljava/lang/String;

    .line 33
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

    iput-object v0, p0, Lc8/GDj;->resolution:Ljava/lang/String;

    .line 35
    sget-object v0, Lc8/Dfh;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lc8/GDj;->ver:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Lc8/qJj;->TIMESTAMP:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lc8/GDj;->time:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v0, "sysinfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "appPackageId"

    iget-object v2, p0, Lc8/GDj;->appPackageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v1, "brand"

    iget-object v2, p0, Lc8/GDj;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v1, "btype"

    iget-object v2, p0, Lc8/GDj;->btype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v1, "deviceId"

    iget-object v2, p0, Lc8/GDj;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v1, "guid"

    iget-object v2, p0, Lc8/GDj;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v1, "idfa"

    iget-object v2, p0, Lc8/GDj;->idfa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v1, "network"

    iget-object v2, p0, Lc8/GDj;->network:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v1, "operator"

    iget-object v2, p0, Lc8/GDj;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "os"

    iget-object v2, p0, Lc8/GDj;->os:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "osVer"

    iget-object v2, p0, Lc8/GDj;->osVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "ouid"

    iget-object v2, p0, Lc8/GDj;->ouid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v1, "pid"

    iget-object v2, p0, Lc8/GDj;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lc8/GDj;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v1, "scale"

    iget-object v2, p0, Lc8/GDj;->scale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "ver"

    iget-object v2, p0, Lc8/GDj;->ver:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v1, "security"

    iget-object v2, p0, Lc8/GDj;->security:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v1, "time"

    iget-object v2, p0, Lc8/GDj;->time:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {v0}, Lc8/IDj;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
