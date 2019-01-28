.class public Lc8/lTb;
.super Ljava/lang/Object;
.source "RunningStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mTb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunningState"
.end annotation


# instance fields
.field mAppId:Ljava/lang/String;

.field mAppKey:Ljava/lang/String;

.field mAppVersion:Ljava/lang/String;

.field mContinuousStartCount:I

.field mContinuousStartCount1Hour:I

.field mContinuousStartCount1Minute:I

.field mContinuousStartCount24Hour:I

.field mContinuousStartCount5Minute:I

.field mElapsedRealtime:J

.field mPid:I

.field mProcessName:Ljava/lang/String;

.field mStartupTime:J

.field mTimestamp:J

.field mTotalStartCount:I

.field mUptimeMillis:J

.field final synthetic this$0:Lc8/mTb;


# direct methods
.method constructor <init>(Lc8/mTb;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lc8/lTb;->this$0:Lc8/mTb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method constructor <init>(Lc8/mTb;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "appVersion"    # Ljava/lang/String;
    .param p6, "processName"    # Ljava/lang/String;
    .param p7, "startupTime"    # J

    .prologue
    const/4 v2, 0x1

    .line 133
    iput-object p1, p0, Lc8/lTb;->this$0:Lc8/mTb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p3, p0, Lc8/lTb;->mAppId:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lc8/lTb;->mAppKey:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lc8/lTb;->mAppVersion:Ljava/lang/String;

    .line 137
    iput-wide p7, p0, Lc8/lTb;->mStartupTime:J

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/lTb;->mUptimeMillis:J

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/lTb;->mElapsedRealtime:J

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/lTb;->mTimestamp:J

    .line 141
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lc8/lTb;->mPid:I

    .line 142
    iput-object p6, p0, Lc8/lTb;->mProcessName:Ljava/lang/String;

    .line 143
    iput v2, p0, Lc8/lTb;->mTotalStartCount:I

    .line 144
    iput v2, p0, Lc8/lTb;->mContinuousStartCount:I

    .line 145
    iput v2, p0, Lc8/lTb;->mContinuousStartCount24Hour:I

    .line 146
    iput v2, p0, Lc8/lTb;->mContinuousStartCount1Hour:I

    .line 147
    iput v2, p0, Lc8/lTb;->mContinuousStartCount1Minute:I

    .line 148
    iput v2, p0, Lc8/lTb;->mContinuousStartCount5Minute:I

    .line 149
    return-void
.end method


# virtual methods
.method deserialize(Ljava/lang/String;)V
    .locals 4
    .param p1, "strStatupState"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lc8/lTb;->mAppId:Ljava/lang/String;

    .line 162
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lc8/lTb;->mAppKey:Ljava/lang/String;

    .line 163
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lc8/lTb;->mAppVersion:Ljava/lang/String;

    .line 164
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lc8/lTb;->mStartupTime:J

    .line 165
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lc8/lTb;->mUptimeMillis:J

    .line 166
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lc8/lTb;->mElapsedRealtime:J

    .line 167
    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lc8/lTb;->mTimestamp:J

    .line 168
    const/4 v1, 0x7

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc8/lTb;->mPid:I

    .line 169
    const/16 v1, 0x8

    aget-object v1, v0, v1

    iput-object v1, p0, Lc8/lTb;->mProcessName:Ljava/lang/String;

    .line 170
    const/16 v1, 0x9

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc8/lTb;->mTotalStartCount:I

    .line 171
    const/16 v1, 0xa

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc8/lTb;->mContinuousStartCount:I

    .line 172
    const/16 v1, 0xb

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc8/lTb;->mContinuousStartCount24Hour:I

    .line 173
    const/16 v1, 0xc

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc8/lTb;->mContinuousStartCount1Hour:I

    .line 174
    const/16 v1, 0xd

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc8/lTb;->mContinuousStartCount1Minute:I

    .line 175
    const/16 v1, 0xe

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lc8/lTb;->mContinuousStartCount5Minute:I

    .line 176
    return-void
.end method

.method serialize()Ljava/lang/String;
    .locals 6

    .prologue
    .line 152
    const-string/jumbo v0, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/lTb;->mAppId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc8/lTb;->mAppKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lc8/lTb;->mAppVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lc8/lTb;->mStartupTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lc8/lTb;->mUptimeMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lc8/lTb;->mElapsedRealtime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v4, p0, Lc8/lTb;->mTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lc8/lTb;->mPid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lc8/lTb;->mProcessName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lc8/lTb;->mTotalStartCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Lc8/lTb;->mContinuousStartCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lc8/lTb;->mContinuousStartCount24Hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget v3, p0, Lc8/lTb;->mContinuousStartCount1Hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget v3, p0, Lc8/lTb;->mContinuousStartCount1Minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget v3, p0, Lc8/lTb;->mContinuousStartCount5Minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
