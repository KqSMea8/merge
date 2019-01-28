.class public Lc8/quf;
.super Ljava/lang/Object;
.source "AnimatedDrawableFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;,
        Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;
    }
.end annotation


# instance fields
.field public final frameNumber:I

.field public final height:I

.field public final mBlendMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

.field public final mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

.field public final width:I

.field public final xOffset:I

.field public final yOffset:I


# direct methods
.method public constructor <init>(IIIIILcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;)V
    .locals 0
    .param p1, "frameNumber"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "blendMode"    # Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;
    .param p7, "disposalMode"    # Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lc8/quf;->frameNumber:I

    .line 21
    iput p2, p0, Lc8/quf;->xOffset:I

    .line 22
    iput p3, p0, Lc8/quf;->yOffset:I

    .line 23
    iput p4, p0, Lc8/quf;->width:I

    .line 24
    iput p5, p0, Lc8/quf;->height:I

    .line 25
    iput-object p6, p0, Lc8/quf;->mBlendMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    .line 26
    iput-object p7, p0, Lc8/quf;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    .line 27
    return-void
.end method
