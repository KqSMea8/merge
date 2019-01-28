.class public Lc8/yef;
.super Ljava/lang/Object;
.source "TemplatePerfInfo.java"


# static fields
.field public static final PERF_PHASE_IN_DEFAULT:I = 0x4

.field public static final PERF_PHASE_IN_FILE:I = 0x2

.field public static final PERF_PHASE_IN_JOBJC:I = 0x5

.field public static final PERF_PHASE_IN_MEM:I = 0x1

.field public static final PERF_PHASE_IN_REMOTE:I = 0x3


# instance fields
.field public fileCostTimeMillis:J

.field public memCostTimeMillis:J

.field public networkCostTimeMillis:J

.field public phase:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lc8/yef;->phase:I

    .line 9
    iput-wide v2, p0, Lc8/yef;->memCostTimeMillis:J

    .line 10
    iput-wide v2, p0, Lc8/yef;->fileCostTimeMillis:J

    .line 11
    iput-wide v2, p0, Lc8/yef;->networkCostTimeMillis:J

    return-void
.end method
