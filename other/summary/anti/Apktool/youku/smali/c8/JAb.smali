.class public Lc8/JAb;
.super Ljava/lang/Object;
.source "SelfMonitorEvent.java"


# static fields
.field public static CLEAN_DB:I = 0x0

.field public static CONFIG_ARRIVE:I = 0x0

.field public static DATALEN_OVERFLOW:I = 0x0

.field public static DB_MONITOR:I = 0x0

.field public static INTERFACE:I = 0x0

.field public static LOGS_TIMEOUT:I = 0x0

.field public static TNET_CREATE_SESSION:I = 0x0

.field public static TNET_REQUEST_ERROR:I = 0x0

.field public static TNET_REQUEST_SEND:I = 0x0

.field public static final TNET_REQUEST_SEND_OFFLINE:Ljava/lang/String; = "tnet_request_send"

.field public static TNET_REQUEST_TIMEOUT:I = 0x0

.field public static UPLOAD_FAILED:I = 0x0

.field public static UPLOAD_TRAFFIC:I = 0x0

.field public static final UPLOAD_TRAFFIC_OFFLINE:Ljava/lang/String; = "upload_traffic"

.field private static mMonitorPoints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final module:Ljava/lang/String; = "AppMonitor"


# instance fields
.field public arg:Ljava/lang/String;

.field public dvs:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

.field public monitorPoint:Ljava/lang/String;

.field public mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

.field public type:Lcom/alibaba/appmonitor/event/EventType;

.field public value:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    .line 14
    const/4 v0, 0x1

    sput v0, Lc8/JAb;->INTERFACE:I

    .line 15
    const/4 v0, 0x2

    sput v0, Lc8/JAb;->CLEAN_DB:I

    .line 16
    const/4 v0, 0x3

    sput v0, Lc8/JAb;->UPLOAD_FAILED:I

    .line 17
    const/4 v0, 0x4

    sput v0, Lc8/JAb;->UPLOAD_TRAFFIC:I

    .line 18
    const/4 v0, 0x5

    sput v0, Lc8/JAb;->DB_MONITOR:I

    .line 20
    const/4 v0, 0x6

    sput v0, Lc8/JAb;->CONFIG_ARRIVE:I

    .line 21
    const/4 v0, 0x7

    sput v0, Lc8/JAb;->TNET_REQUEST_SEND:I

    .line 22
    const/16 v0, 0x8

    sput v0, Lc8/JAb;->TNET_CREATE_SESSION:I

    .line 23
    const/16 v0, 0x9

    sput v0, Lc8/JAb;->TNET_REQUEST_TIMEOUT:I

    .line 24
    const/16 v0, 0xa

    sput v0, Lc8/JAb;->TNET_REQUEST_ERROR:I

    .line 25
    const/16 v0, 0xb

    sput v0, Lc8/JAb;->DATALEN_OVERFLOW:I

    .line 26
    const/16 v0, 0xc

    sput v0, Lc8/JAb;->LOGS_TIMEOUT:I

    .line 34
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->INTERFACE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sampling_monitor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->CLEAN_DB:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "db_clean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->DB_MONITOR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "db_monitor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->UPLOAD_FAILED:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "upload_failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->UPLOAD_TRAFFIC:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "upload_traffic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->CONFIG_ARRIVE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "config_arrive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->TNET_REQUEST_SEND:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tnet_request_send"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->TNET_CREATE_SESSION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tnet_create_session"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->TNET_REQUEST_TIMEOUT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tnet_request_timeout"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->TNET_REQUEST_ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tent_request_error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->DATALEN_OVERFLOW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "datalen_overflow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    sget v1, Lc8/JAb;->LOGS_TIMEOUT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "logs_timeout"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 1
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "dvs"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p3, "mvs"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/JAb;->monitorPoint:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/JAb;->type:Lcom/alibaba/appmonitor/event/EventType;

    .line 73
    iput-object p1, p0, Lc8/JAb;->monitorPoint:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lc8/JAb;->dvs:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 75
    iput-object p3, p0, Lc8/JAb;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 76
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    iput-object v0, p0, Lc8/JAb;->type:Lcom/alibaba/appmonitor/event/EventType;

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Double;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/JAb;->monitorPoint:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/JAb;->type:Lcom/alibaba/appmonitor/event/EventType;

    .line 66
    iput-object p1, p0, Lc8/JAb;->monitorPoint:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lc8/JAb;->arg:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lc8/JAb;->value:Ljava/lang/Double;

    .line 69
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    iput-object v0, p0, Lc8/JAb;->type:Lcom/alibaba/appmonitor/event/EventType;

    .line 70
    return-void
.end method

.method public static buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;
    .locals 2
    .param p0, "type"    # I
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 50
    new-instance v0, Lc8/JAb;

    invoke-static {p0}, Lc8/JAb;->getMonitorPoint(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lc8/JAb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method public static buildStatEvent(ILcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lc8/JAb;
    .locals 2
    .param p0, "type"    # I
    .param p1, "dvs"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p2, "mvs"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lc8/JAb;

    invoke-static {p0}, Lc8/JAb;->getMonitorPoint(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lc8/JAb;-><init>(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    return-object v0
.end method

.method private static getMonitorPoint(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 93
    sget-object v0, Lc8/JAb;->mMonitorPoints:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SelfMonitorEvent{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "arg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/JAb;->arg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v1, ", monitorPoint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/JAb;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/JAb;->type:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/JAb;->value:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v1, ", dvs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/JAb;->dvs:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v1, ", mvs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/JAb;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
