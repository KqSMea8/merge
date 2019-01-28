.class public Lcom/taobao/onlinemonitor/TraceDetail$SmStat;
.super Ljava/lang/Object;
.source "TraceDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Asf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmStat"
.end annotation


# instance fields
.field public badSmCount:S

.field public drawCount:S

.field public eventCount:S

.field public eventMaxDelaytime:S

.field public eventRate:S

.field public eventUseTime:S

.field public index:I

.field public layoutTimes:S

.field public maxSMInterval:S

.field public sm:S

.field public totalBadSmTime:S

.field public totalSmCount:S

.field public usetime:S

.field public viewName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
