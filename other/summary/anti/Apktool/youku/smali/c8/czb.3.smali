.class public Lc8/czb;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entity"
.end annotation


# instance fields
.field public dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

.field public isCommitDetail:Z

.field public measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

.field public module:Ljava/lang/String;

.field public monitorPoint:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
