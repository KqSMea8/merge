.class public final Lc8/uxq;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/uxq;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Lc8/hnq;

.field final count:I

.field final execTime:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lc8/hnq;Ljava/lang/Long;I)V
    .locals 0
    .param p1, "action"    # Lc8/hnq;
    .param p2, "execTime"    # Ljava/lang/Long;
    .param p3, "count"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lc8/uxq;->action:Lc8/hnq;

    .line 109
    iput-object p2, p0, Lc8/uxq;->execTime:Ljava/lang/Long;

    .line 110
    iput p3, p0, Lc8/uxq;->count:I

    .line 111
    return-void
.end method


# virtual methods
.method public compareTo(Lc8/uxq;)I
    .locals 3
    .param p1, "that"    # Lc8/uxq;

    .prologue
    .line 115
    iget-object v1, p0, Lc8/uxq;->execTime:Ljava/lang/Long;

    iget-object v2, p1, Lc8/uxq;->execTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 116
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 117
    iget v1, p0, Lc8/uxq;->count:I

    iget v2, p1, Lc8/uxq;->count:I

    invoke-static {v1, v2}, Lc8/vxq;->compare(II)I

    move-result v0

    .line 119
    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lc8/uxq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/uxq;->compareTo(Lc8/uxq;)I

    move-result v0

    return v0
.end method
