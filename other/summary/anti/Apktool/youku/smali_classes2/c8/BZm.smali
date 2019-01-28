.class public Lc8/BZm;
.super Lc8/rSb;
.source "YKSendModule.java"


# instance fields
.field public beginSendTime:J

.field public id:Ljava/lang/String;

.field public lastSendTime:J

.field public sendCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/rSb;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lc8/rSb;)V
    .locals 1
    .param p1, "sendModule"    # Lc8/rSb;

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/rSb;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/BZm;->id:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lc8/rSb;->sendContent:Ljava/lang/String;

    iput-object v0, p0, Lc8/BZm;->sendContent:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lc8/rSb;->businessType:Ljava/lang/String;

    iput-object v0, p0, Lc8/BZm;->businessType:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lc8/rSb;->aggregationType:Ljava/lang/String;

    iput-object v0, p0, Lc8/BZm;->aggregationType:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lc8/rSb;->eventId:Ljava/lang/Integer;

    iput-object v0, p0, Lc8/BZm;->eventId:Ljava/lang/Integer;

    .line 41
    iget-object v0, p1, Lc8/rSb;->sendFlag:Ljava/lang/String;

    iput-object v0, p0, Lc8/BZm;->sendFlag:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static build(Lc8/rSb;)Lc8/BZm;
    .locals 1
    .param p0, "sendModule"    # Lc8/rSb;

    .prologue
    .line 46
    new-instance v0, Lc8/BZm;

    invoke-direct {v0, p0}, Lc8/BZm;-><init>(Lc8/rSb;)V

    invoke-direct {v0}, Lc8/BZm;->init()Lc8/BZm;

    move-result-object v0

    return-object v0
.end method

.method private init()Lc8/BZm;
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/BZm;->beginSendTime:J

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/BZm;->lastSendTime:J

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lc8/BZm;->sendCount:I

    .line 54
    return-object p0
.end method


# virtual methods
.method public update()Lc8/BZm;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/BZm;->lastSendTime:J

    .line 59
    iget v0, p0, Lc8/BZm;->sendCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/BZm;->sendCount:I

    .line 60
    return-object p0
.end method
