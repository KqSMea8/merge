.class public Lc8/oNp;
.super Ljava/lang/Object;
.source "ApiLockHelper.java"


# static fields
.field private static final LOCK_PERIOD:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "mtopsdk.ApiLockHelper"

.field private static lockedMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/pNp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/oNp;->lockedMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildApiLockLog(JLc8/pNp;)Ljava/lang/String;
    .locals 4
    .param p0, "currentTime"    # J
    .param p2, "entity"    # Lc8/pNp;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    .local v0, "logBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ", currentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", lockEntity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lc8/pNp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static iSApiLocked(Ljava/lang/String;J)Z
    .locals 9
    .param p0, "apiFullName"    # Ljava/lang/String;
    .param p1, "currentTime"    # J

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "isLocked":Z
    invoke-static {p0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 53
    .end local v1    # "isLocked":Z
    .local v2, "isLocked":I
    :goto_0
    return v2

    .line 38
    .end local v2    # "isLocked":I
    .restart local v1    # "isLocked":Z
    :cond_0
    sget-object v3, Lc8/oNp;->lockedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/pNp;

    .line 39
    .local v0, "entity":Lc8/pNp;
    if-eqz v0, :cond_2

    .line 40
    iget-wide v4, v0, Lc8/pNp;->lockStartTime:J

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, v0, Lc8/pNp;->lockInterval:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    .line 41
    const/4 v1, 0x1

    .line 49
    :cond_1
    :goto_1
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    const-string/jumbo v3, "mtopsdk.ApiLockHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[iSApiLocked] isLocked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2, v0}, Lc8/oNp;->buildApiLockLog(JLc8/pNp;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v2, v1

    .line 53
    .restart local v2    # "isLocked":I
    goto :goto_0

    .line 43
    .end local v2    # "isLocked":I
    :cond_3
    sget-object v3, Lc8/oNp;->lockedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    const-string/jumbo v3, "mtopsdk.ApiLockHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[iSApiLocked]remove apiKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static lock(Ljava/lang/String;J)V
    .locals 7
    .param p0, "apiFullName"    # Ljava/lang/String;
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 64
    invoke-static {p0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget-object v1, Lc8/oNp;->lockedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/pNp;

    .line 70
    .local v0, "entity":Lc8/pNp;
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/oOp;->getIndividualApiLockInterval(Ljava/lang/String;)J

    move-result-wide v4

    .line 71
    .local v4, "lockInterval":J
    cmp-long v1, v4, v2

    if-gtz v1, :cond_2

    .line 72
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v1

    invoke-virtual {v1}, Lc8/oOp;->getGlobalApiLockInterval()J

    move-result-wide v4

    .line 73
    cmp-long v1, v4, v2

    if-gtz v1, :cond_2

    .line 74
    const-wide/16 v4, 0xa

    .line 77
    :cond_2
    if-nez v0, :cond_3

    .line 78
    new-instance v0, Lc8/pNp;

    .end local v0    # "entity":Lc8/pNp;
    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lc8/pNp;-><init>(Ljava/lang/String;JJ)V

    .line 83
    .restart local v0    # "entity":Lc8/pNp;
    :goto_1
    sget-object v1, Lc8/oNp;->lockedMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, "mtopsdk.ApiLockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[lock]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2, v0}, Lc8/oNp;->buildApiLockLog(JLc8/pNp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_3
    iput-wide p1, v0, Lc8/pNp;->lockStartTime:J

    .line 81
    iput-wide v4, v0, Lc8/pNp;->lockInterval:J

    goto :goto_1
.end method
