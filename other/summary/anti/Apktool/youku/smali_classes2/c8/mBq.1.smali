.class public final Lc8/mBq;
.super Ljava/lang/Object;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nBq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimedAction"
.end annotation


# instance fields
.field final action:Lc8/hnq;

.field private final count:J

.field final scheduler:Lc8/Zlq;

.field final time:J


# direct methods
.method constructor <init>(Lc8/Zlq;JLc8/hnq;)V
    .locals 4
    .param p1, "scheduler"    # Lc8/Zlq;
    .param p2, "time"    # J
    .param p4, "action"    # Lc8/hnq;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-wide v0, Lc8/nBq;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lc8/nBq;->counter:J

    iput-wide v0, p0, Lc8/mBq;->count:J

    .line 49
    iput-wide p2, p0, Lc8/mBq;->time:J

    .line 50
    iput-object p4, p0, Lc8/mBq;->action:Lc8/hnq;

    .line 51
    iput-object p1, p0, Lc8/mBq;->scheduler:Lc8/Zlq;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lc8/mBq;)J
    .locals 2
    .param p0, "x0"    # Lc8/mBq;

    .prologue
    .line 41
    iget-wide v0, p0, Lc8/mBq;->count:J

    return-wide v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 56
    const-string/jumbo v0, "TimedAction(time = %d, action = %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lc8/mBq;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc8/mBq;->action:Lc8/hnq;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
