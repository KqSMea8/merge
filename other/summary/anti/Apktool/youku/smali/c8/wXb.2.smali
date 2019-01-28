.class public Lc8/wXb;
.super Ljava/lang/Object;
.source "PopRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopParam"
.end annotation


# instance fields
.field public enqueue:Z

.field public exclusive:Z

.field public forcePopRespectingPriority:Z

.field public priority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method public constructor <init>(IZZZ)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "enqueue"    # Z
    .param p3, "forcePopRespectingPriority"    # Z
    .param p4, "exclusive"    # Z

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lc8/wXb;->priority:I

    .line 168
    iput-boolean p2, p0, Lc8/wXb;->enqueue:Z

    .line 169
    iput-boolean p3, p0, Lc8/wXb;->forcePopRespectingPriority:Z

    .line 170
    iput-boolean p4, p0, Lc8/wXb;->exclusive:Z

    .line 171
    return-void
.end method
