.class public Lc8/ef;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/df;,
        Lc8/af;,
        Lc8/Ye;,
        Lc8/Xe;,
        Lc8/Ze;
    }
.end annotation


# instance fields
.field private final mImpl:Lc8/df;


# direct methods
.method constructor <init>(Lc8/df;)V
    .locals 0
    .param p1, "impl"    # Lc8/df;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lc8/ef;->mImpl:Lc8/df;

    .line 116
    return-void
.end method


# virtual methods
.method public addListener(Lc8/Xe;)V
    .locals 2
    .param p1, "listener"    # Lc8/Xe;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    new-instance v1, Lc8/We;

    invoke-direct {v1, p0, p1}, Lc8/We;-><init>(Lc8/ef;Lc8/Xe;)V

    invoke-virtual {v0, v1}, Lc8/df;->addListener(Lc8/bf;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/df;->addListener(Lc8/bf;)V

    goto :goto_0
.end method

.method public addUpdateListener(Lc8/Ze;)V
    .locals 2
    .param p1, "updateListener"    # Lc8/Ze;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    new-instance v1, Lc8/Ve;

    invoke-direct {v1, p0, p1}, Lc8/Ve;-><init>(Lc8/ef;Lc8/Ze;)V

    invoke-virtual {v0, v1}, Lc8/df;->addUpdateListener(Lc8/cf;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/df;->addUpdateListener(Lc8/cf;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0}, Lc8/df;->cancel()V

    .line 188
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0}, Lc8/df;->end()V

    .line 196
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0}, Lc8/df;->getAnimatedFloatValue()F

    move-result v0

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0}, Lc8/df;->getAnimatedFraction()F

    move-result v0

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0}, Lc8/df;->getAnimatedIntValue()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0}, Lc8/df;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0}, Lc8/df;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 183
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0, p1, p2}, Lc8/df;->setDuration(J)V

    .line 184
    return-void
.end method

.method public setFloatValues(FF)V
    .locals 1
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 175
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0, p1, p2}, Lc8/df;->setFloatValues(FF)V

    .line 176
    return-void
.end method

.method public setIntValues(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0, p1, p2}, Lc8/df;->setIntValues(II)V

    .line 168
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 127
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0, p1}, Lc8/df;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lc8/ef;->mImpl:Lc8/df;

    invoke-virtual {v0}, Lc8/df;->start()V

    .line 120
    return-void
.end method
