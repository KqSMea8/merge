.class public Lc8/sAb;
.super Ljava/lang/Object;
.source "TimeStampAdjustMgr.java"


# static fields
.field public static final TAG_TIME_ADJUST_HOST_PORT:Ljava/lang/String; = "time_adjust_host"

.field private static instance:Lc8/sAb;


# instance fields
.field private defaultHost:Ljava/lang/String;

.field private defaultUrl:Ljava/lang/String;

.field private diff:J

.field private flag:Z

.field private scheme:Ljava/lang/String;

.field private urlFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lc8/sAb;

    invoke-direct {v0}, Lc8/sAb;-><init>()V

    sput-object v0, Lc8/sAb;->instance:Lc8/sAb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/sAb;->diff:J

    .line 20
    const-string/jumbo v0, "http://"

    iput-object v0, p0, Lc8/sAb;->scheme:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "acs.m.taobao.com"

    iput-object v0, p0, Lc8/sAb;->defaultHost:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "/gw/mtop.common.getTimestamp/*"

    iput-object v0, p0, Lc8/sAb;->urlFile:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "http://acs.m.taobao.com/gw/mtop.common.getTimestamp/*"

    iput-object v0, p0, Lc8/sAb;->defaultUrl:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/sAb;->flag:Z

    return-void
.end method

.method static synthetic access$000(Lc8/sAb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/sAb;

    .prologue
    .line 16
    iget-object v0, p0, Lc8/sAb;->defaultHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/sAb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/sAb;

    .prologue
    .line 16
    iget-object v0, p0, Lc8/sAb;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/sAb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/sAb;

    .prologue
    .line 16
    iget-object v0, p0, Lc8/sAb;->urlFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/sAb;)J
    .locals 2
    .param p0, "x0"    # Lc8/sAb;

    .prologue
    .line 16
    iget-wide v0, p0, Lc8/sAb;->diff:J

    return-wide v0
.end method

.method static synthetic access$302(Lc8/sAb;J)J
    .locals 1
    .param p0, "x0"    # Lc8/sAb;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lc8/sAb;->diff:J

    return-wide p1
.end method

.method static synthetic access$402(Lc8/sAb;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/sAb;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lc8/sAb;->flag:Z

    return p1
.end method

.method public static getInstance()Lc8/sAb;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lc8/sAb;->instance:Lc8/sAb;

    return-object v0
.end method


# virtual methods
.method public getAdjustFlag()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lc8/sAb;->flag:Z

    return v0
.end method

.method public getCurrentMils()J
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc8/sAb;->diff:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public startSync()V
    .locals 6

    .prologue
    .line 33
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lc8/rAb;

    invoke-direct {v2, p0}, Lc8/rAb;-><init>(Lc8/sAb;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    .line 68
    return-void
.end method
