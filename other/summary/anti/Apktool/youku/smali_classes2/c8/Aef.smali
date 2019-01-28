.class public Lc8/Aef;
.super Ljava/lang/Object;
.source "TemplateResult.java"


# instance fields
.field public arrivedPhase:I

.field public content:Ljava/lang/String;

.field public fileCostTimeMillis:J

.field public jsonCostTimeMillis:J

.field public jsonObject:Lcom/alibaba/fastjson/JSONObject;

.field public memCostTimeMillis:J

.field public networkCostTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lc8/Aef;->arrivedPhase:I

    .line 18
    iput-wide v2, p0, Lc8/Aef;->memCostTimeMillis:J

    .line 20
    iput-wide v2, p0, Lc8/Aef;->fileCostTimeMillis:J

    .line 22
    iput-wide v2, p0, Lc8/Aef;->networkCostTimeMillis:J

    .line 24
    iput-wide v2, p0, Lc8/Aef;->jsonCostTimeMillis:J

    return-void
.end method


# virtual methods
.method public fillPerfInfo(Lc8/yef;)V
    .locals 2
    .param p1, "perfInfo"    # Lc8/yef;

    .prologue
    .line 27
    iget v0, p1, Lc8/yef;->phase:I

    iput v0, p0, Lc8/Aef;->arrivedPhase:I

    .line 28
    iget-wide v0, p1, Lc8/yef;->memCostTimeMillis:J

    iput-wide v0, p0, Lc8/Aef;->memCostTimeMillis:J

    .line 29
    iget-wide v0, p1, Lc8/yef;->fileCostTimeMillis:J

    iput-wide v0, p0, Lc8/Aef;->fileCostTimeMillis:J

    .line 30
    iget-wide v0, p1, Lc8/yef;->networkCostTimeMillis:J

    iput-wide v0, p0, Lc8/Aef;->networkCostTimeMillis:J

    .line 31
    return-void
.end method
