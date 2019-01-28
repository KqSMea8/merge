.class public Lc8/Qrf;
.super Ljava/lang/Object;
.source "MemoryDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Srf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;)I
    .locals 4
    .param p1, "s1"    # Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;
    .param p2, "s2"    # Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;

    .prologue
    .line 413
    iget-wide v0, p2, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->totalRetainedHeapSize:J

    iget-wide v2, p1, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;->totalRetainedHeapSize:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 410
    check-cast p1, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/Qrf;->compare(Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;Lcom/taobao/onlinemonitor/MemoryDetector$StaticOwner;)I

    move-result v0

    return v0
.end method
