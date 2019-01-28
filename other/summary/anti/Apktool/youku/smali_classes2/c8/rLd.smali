.class public Lc8/rLd;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/sLd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackerBuilder"
.end annotation


# static fields
.field protected static defaultTrackerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lc8/sLd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final appId:Ljava/lang/String;

.field protected backgroundTimeout:J

.field protected base64Encoded:Z

.field protected final context:Landroid/content/Context;

.field protected final emitter:Lc8/UKd;

.field protected foregroundTimeout:J

.field protected logLevel:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

.field protected final namespace:Ljava/lang/String;

.field protected sessionCheckInterval:J

.field protected sessionContext:Z

.field protected subject:Lc8/qLd;

.field protected threadCount:I

.field protected timeUnit:Ljava/util/concurrent/TimeUnit;

.field private trackerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lc8/sLd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/UKd;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "emitter"    # Lc8/UKd;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v5, Lc8/rLd;->defaultTrackerClass:Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lc8/rLd;-><init>(Lc8/UKd;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lc8/UKd;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .param p1, "emitter"    # Lc8/UKd;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/UKd;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/sLd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "trackerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;>;"
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/rLd;->subject:Lc8/qLd;

    .line 62
    iput-boolean v1, p0, Lc8/rLd;->base64Encoded:Z

    .line 63
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;->OFF:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    iput-object v0, p0, Lc8/rLd;->logLevel:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    .line 64
    iput-boolean v1, p0, Lc8/rLd;->sessionContext:Z

    .line 65
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lc8/rLd;->foregroundTimeout:J

    .line 66
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lc8/rLd;->backgroundTimeout:J

    .line 67
    const-wide/16 v0, 0xf

    iput-wide v0, p0, Lc8/rLd;->sessionCheckInterval:J

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lc8/rLd;->threadCount:I

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lc8/rLd;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 90
    iput-object p1, p0, Lc8/rLd;->emitter:Lc8/UKd;

    .line 91
    iput-object p2, p0, Lc8/rLd;->namespace:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lc8/rLd;->appId:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lc8/rLd;->context:Landroid/content/Context;

    .line 94
    iput-object p5, p0, Lc8/rLd;->trackerClass:Ljava/lang/Class;

    .line 95
    return-void
.end method


# virtual methods
.method public base64(Ljava/lang/Boolean;)Lc8/rLd;
    .locals 1
    .param p1, "base64"    # Ljava/lang/Boolean;

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lc8/rLd;->base64Encoded:Z

    .line 112
    return-object p0
.end method

.method public level(Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;)Lc8/rLd;
    .locals 0
    .param p1, "log"    # Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    .prologue
    .line 121
    iput-object p1, p0, Lc8/rLd;->logLevel:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    .line 122
    return-object p0
.end method

.method public subject(Lc8/qLd;)Lc8/rLd;
    .locals 0
    .param p1, "subject"    # Lc8/qLd;

    .prologue
    .line 102
    iput-object p1, p0, Lc8/rLd;->subject:Lc8/qLd;

    .line 103
    return-object p0
.end method

.method public threadCount(I)Lc8/rLd;
    .locals 0
    .param p1, "threadCount"    # I

    .prologue
    .line 166
    iput p1, p0, Lc8/rLd;->threadCount:I

    .line 167
    return-object p0
.end method
