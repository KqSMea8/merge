.class public Lc8/Asb;
.super Ljava/lang/Object;
.source "ExpressionScrollHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentOffsetHolder"
.end annotation


# instance fields
.field x:I

.field y:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput p1, p0, Lc8/Asb;->x:I

    .line 380
    iput p2, p0, Lc8/Asb;->y:I

    .line 381
    return-void
.end method
