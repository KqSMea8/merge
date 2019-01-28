.class public Lc8/vt;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Lc8/Qv;

.field public toX:I

.field public toY:I


# direct methods
.method constructor <init>(Lc8/Qv;IIII)V
    .locals 0
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lc8/vt;->holder:Lc8/Qv;

    .line 59
    iput p2, p0, Lc8/vt;->fromX:I

    .line 60
    iput p3, p0, Lc8/vt;->fromY:I

    .line 61
    iput p4, p0, Lc8/vt;->toX:I

    .line 62
    iput p5, p0, Lc8/vt;->toY:I

    .line 63
    return-void
.end method
