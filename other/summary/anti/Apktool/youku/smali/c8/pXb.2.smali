.class public final Lc8/pXb;
.super Lc8/wXb;
.source "InnerPopParam.java"


# instance fields
.field final level:I


# direct methods
.method public constructor <init>(Lc8/wXb;Lc8/CXb;)V
    .locals 1
    .param p1, "popParam"    # Lc8/wXb;
    .param p2, "configItem"    # Lc8/CXb;

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/wXb;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget-boolean v0, p1, Lc8/wXb;->enqueue:Z

    iput-boolean v0, p0, Lc8/pXb;->enqueue:Z

    .line 20
    iget-boolean v0, p1, Lc8/wXb;->exclusive:Z

    iput-boolean v0, p0, Lc8/pXb;->exclusive:Z

    .line 21
    iget-boolean v0, p1, Lc8/wXb;->forcePopRespectingPriority:Z

    iput-boolean v0, p0, Lc8/pXb;->forcePopRespectingPriority:Z

    .line 22
    iget v0, p1, Lc8/wXb;->priority:I

    iput v0, p0, Lc8/pXb;->priority:I

    .line 29
    :goto_0
    iget v0, p2, Lc8/CXb;->level:I

    iput v0, p0, Lc8/pXb;->level:I

    .line 30
    return-void

    .line 24
    :cond_0
    iget-boolean v0, p2, Lc8/CXb;->enqueue:Z

    iput-boolean v0, p0, Lc8/pXb;->enqueue:Z

    .line 25
    iget-boolean v0, p2, Lc8/CXb;->exclusive:Z

    iput-boolean v0, p0, Lc8/pXb;->exclusive:Z

    .line 26
    iget-boolean v0, p2, Lc8/CXb;->forcePopRespectingPriority:Z

    iput-boolean v0, p0, Lc8/pXb;->forcePopRespectingPriority:Z

    .line 27
    iget v0, p2, Lc8/CXb;->priority:I

    iput v0, p0, Lc8/pXb;->priority:I

    goto :goto_0
.end method
