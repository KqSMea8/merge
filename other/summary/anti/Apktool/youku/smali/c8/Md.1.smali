.class public abstract Lc8/Md;
.super Lc8/Ye;
.source "FloatingActionButtonGingerbread.java"

# interfaces
.implements Lc8/Ze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ShadowAnimatorImpl"
.end annotation


# instance fields
.field private mShadowSizeEnd:F

.field private mShadowSizeStart:F

.field private mValidValues:Z

.field final synthetic this$0:Lc8/Nd;


# direct methods
.method private constructor <init>(Lc8/Nd;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lc8/Md;->this$0:Lc8/Nd;

    invoke-direct {p0}, Lc8/Ye;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Nd;Lc8/Hd;)V
    .locals 0
    .param p1, "x0"    # Lc8/Nd;
    .param p2, "x1"    # Lc8/Hd;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lc8/Md;-><init>(Lc8/Nd;)V

    return-void
.end method


# virtual methods
.method protected abstract getTargetShadowSize()F
.end method

.method public onAnimationEnd(Lc8/ef;)V
    .locals 2
    .param p1, "animator"    # Lc8/ef;

    .prologue
    .line 238
    iget-object v0, p0, Lc8/Md;->this$0:Lc8/Nd;

    iget-object v0, v0, Lc8/Nd;->mShadowDrawable:Lc8/fe;

    iget v1, p0, Lc8/Md;->mShadowSizeEnd:F

    invoke-virtual {v0, v1}, Lc8/fe;->setShadowSize(F)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Md;->mValidValues:Z

    .line 240
    return-void
.end method

.method public onAnimationUpdate(Lc8/ef;)V
    .locals 4
    .param p1, "animator"    # Lc8/ef;

    .prologue
    .line 226
    iget-boolean v0, p0, Lc8/Md;->mValidValues:Z

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lc8/Md;->this$0:Lc8/Nd;

    iget-object v0, v0, Lc8/Nd;->mShadowDrawable:Lc8/fe;

    invoke-virtual {v0}, Lc8/fe;->getShadowSize()F

    move-result v0

    iput v0, p0, Lc8/Md;->mShadowSizeStart:F

    .line 228
    invoke-virtual {p0}, Lc8/Md;->getTargetShadowSize()F

    move-result v0

    iput v0, p0, Lc8/Md;->mShadowSizeEnd:F

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Md;->mValidValues:Z

    .line 232
    :cond_0
    iget-object v0, p0, Lc8/Md;->this$0:Lc8/Nd;

    iget-object v0, v0, Lc8/Nd;->mShadowDrawable:Lc8/fe;

    iget v1, p0, Lc8/Md;->mShadowSizeStart:F

    iget v2, p0, Lc8/Md;->mShadowSizeEnd:F

    iget v3, p0, Lc8/Md;->mShadowSizeStart:F

    sub-float/2addr v2, v3

    .line 233
    invoke-virtual {p1}, Lc8/ef;->getAnimatedFraction()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 232
    invoke-virtual {v0, v1}, Lc8/fe;->setShadowSize(F)V

    .line 234
    return-void
.end method
