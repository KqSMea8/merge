.class public Lcom/taobao/onlinemonitor/MemoryDetector$LeakItem;
.super Ljava/lang/Object;
.source "MemoryDetector.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Srf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeakItem"
.end annotation


# instance fields
.field public analysisDurationMs:J

.field public className:Ljava/lang/String;

.field public detailLeakTrace:Ljava/lang/String;

.field public retainedHeapSize:J

.field public simpleLeakTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
