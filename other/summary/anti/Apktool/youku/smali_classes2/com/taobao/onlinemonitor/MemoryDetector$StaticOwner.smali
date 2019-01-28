.class public Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
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
    name = "StaticOwner"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public totalRetainedHeapSize:J

.field public totalShadowHeapSize:J

.field public variables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->className:Ljava/lang/String;

    .line 440
    return-void
.end method


# virtual methods
.method public addStaticVariable(Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;)V
    .locals 4
    .param p1, "variable"    # Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->variables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->variables:Ljava/util/List;

    .line 446
    :cond_0
    iget-wide v0, p0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->totalRetainedHeapSize:J

    iget-wide v2, p1, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->retainedHeapSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->totalRetainedHeapSize:J

    .line 447
    iget-wide v0, p0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->totalShadowHeapSize:J

    iget-wide v2, p1, Lcom/taobao/onlinemonitor/MemoryDetector$StaticVariable;->shadowHeapSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->totalShadowHeapSize:J

    .line 448
    iget-object v0, p0, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->variables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method
