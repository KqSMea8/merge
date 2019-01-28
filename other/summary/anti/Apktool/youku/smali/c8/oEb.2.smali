.class public Lc8/oEb;
.super Lc8/Xzb;
.source "TempEvent.java"


# static fields
.field public static final TAG_ACCESS:Ljava/lang/String; = "access"
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field public static final TAG_ACCESSSUBTYPE:Ljava/lang/String; = "sub_access"
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field public static final TAG_COMMITTIME:Ljava/lang/String; = "commit_time"
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field public static final TAG_MODULE:Ljava/lang/String; = "module"
    .annotation runtime Lc8/eAb;
    .end annotation
.end field

.field public static final TAG_MONITOR_POINT:Ljava/lang/String; = "monitor_point"
    .annotation runtime Lc8/eAb;
    .end annotation
.end field


# instance fields
.field public access:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "access"
    .end annotation
.end field

.field public accessSubType:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "sub_access"
    .end annotation
.end field

.field public commitTime:J
    .annotation runtime Lc8/dAb;
        value = "commit_time"
    .end annotation
.end field

.field public module:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "module"
    .end annotation
.end field

.field public monitorPoint:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "monitor_point"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "access"    # Ljava/lang/String;
    .param p4, "accsssSubType"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/oEb;->module:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lc8/oEb;->monitorPoint:Ljava/lang/String;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/oEb;->commitTime:J

    .line 41
    iput-object p3, p0, Lc8/oEb;->access:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lc8/oEb;->accessSubType:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TempEvent{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
