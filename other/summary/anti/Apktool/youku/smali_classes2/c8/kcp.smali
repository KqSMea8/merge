.class public Lc8/kcp;
.super Landroid/widget/SeekBar;
.source "YoukuSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/jcp;
    }
.end annotation


# static fields
.field private static final MAX:I = 0xc8


# instance fields
.field private mAutoSeek:Lc8/jcp;

.field private seekPositon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$drawable;->progressthumbstyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/kcp;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$drawable;->progressbarstyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/kcp;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lc8/kcp;->setMax(I)V

    .line 25
    const/16 v0, -0xa

    invoke-virtual {p0, v0}, Lc8/kcp;->setThumbOffset(I)V

    .line 26
    invoke-virtual {p0}, Lc8/kcp;->show()V

    .line 27
    return-void
.end method

.method static synthetic access$100(Lc8/kcp;)I
    .locals 1
    .param p0, "x0"    # Lc8/kcp;

    .prologue
    .line 10
    iget v0, p0, Lc8/kcp;->seekPositon:I

    return v0
.end method

.method static synthetic access$102(Lc8/kcp;I)I
    .locals 0
    .param p0, "x0"    # Lc8/kcp;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lc8/kcp;->seekPositon:I

    return p1
.end method

.method static synthetic access$108(Lc8/kcp;)I
    .locals 2
    .param p0, "x0"    # Lc8/kcp;

    .prologue
    .line 10
    iget v0, p0, Lc8/kcp;->seekPositon:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc8/kcp;->seekPositon:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lc8/kcp;->dismiss()V

    .line 50
    iget-object v0, p0, Lc8/kcp;->mAutoSeek:Lc8/jcp;

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/kcp;->mAutoSeek:Lc8/jcp;

    .line 53
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lc8/kcp;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lc8/kcp;->mAutoSeek:Lc8/jcp;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lc8/kcp;->mAutoSeek:Lc8/jcp;

    invoke-virtual {v0}, Lc8/jcp;->stop()V

    .line 43
    iget-object v0, p0, Lc8/kcp;->mAutoSeek:Lc8/jcp;

    invoke-virtual {p0, v0}, Lc8/kcp;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/kcp;->mAutoSeek:Lc8/jcp;

    .line 46
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 81
    const/16 v0, 0x8

    invoke-virtual {p0}, Lc8/kcp;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lc8/kcp;->mAutoSeek:Lc8/jcp;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lc8/jcp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/jcp;-><init>(Lc8/kcp;Lc8/icp;)V

    iput-object v0, p0, Lc8/kcp;->mAutoSeek:Lc8/jcp;

    .line 34
    iget-object v0, p0, Lc8/kcp;->mAutoSeek:Lc8/jcp;

    invoke-virtual {p0, v0}, Lc8/kcp;->post(Ljava/lang/Runnable;)Z

    .line 36
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/kcp;->setVisibility(I)V

    .line 37
    return-void
.end method
