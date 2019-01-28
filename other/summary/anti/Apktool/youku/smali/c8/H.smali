.class public final Lc8/H;
.super Lc8/F;
.source "SpringAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/F",
        "<",
        "Lc8/H;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private mEndRequested:Z

.field private mPendingPosition:F

.field private mSpring:Lc8/J;


# direct methods
.method public constructor <init>(Landroid/view/View;Lc8/E;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "property"    # Lc8/E;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lc8/F;-><init>(Landroid/view/View;Lc8/E;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    .line 60
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lc8/H;->mPendingPosition:F

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/H;->mEndRequested:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lc8/E;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "property"    # Lc8/E;
    .param p3, "finalPosition"    # F

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lc8/F;-><init>(Landroid/view/View;Lc8/E;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    .line 60
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lc8/H;->mPendingPosition:F

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/H;->mEndRequested:Z

    .line 87
    new-instance v0, Lc8/J;

    invoke-direct {v0, p3}, Lc8/J;-><init>(F)V

    iput-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    .line 88
    invoke-direct {p0}, Lc8/H;->setSpringThreshold()V

    .line 89
    return-void
.end method

.method private sanityCheck()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lc8/H;->mSpring:Lc8/J;

    if-nez v2, :cond_0

    .line 192
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_0
    iget-object v2, p0, Lc8/H;->mSpring:Lc8/J;

    invoke-virtual {v2}, Lc8/J;->getFinalPosition()F

    move-result v2

    float-to-double v0, v2

    .line 196
    .local v0, "finalPosition":D
    iget v2, p0, Lc8/H;->mMaxValue:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 197
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_1
    iget v2, p0, Lc8/H;->mMinValue:F

    float-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 200
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Final position of the spring cannot be less than the min value."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_2
    return-void
.end method

.method private setSpringThreshold()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lc8/H;->mViewProperty:Lc8/E;

    sget-object v1, Lc8/H;->ROTATION:Lc8/E;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc8/H;->mViewProperty:Lc8/E;

    sget-object v1, Lc8/H;->ROTATION_X:Lc8/E;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc8/H;->mViewProperty:Lc8/E;

    sget-object v1, Lc8/H;->ROTATION_Y:Lc8/E;

    if-ne v0, v1, :cond_1

    .line 180
    :cond_0
    iget-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    const-wide v2, 0x3f61111111111111L    # 0.0020833333333333333

    invoke-virtual {v0, v2, v3}, Lc8/J;->setDefaultThreshold(D)V

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lc8/H;->mViewProperty:Lc8/E;

    sget-object v1, Lc8/H;->ALPHA:Lc8/E;

    if-ne v0, v1, :cond_2

    .line 182
    iget-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    const-wide v2, 0x3f68181818181818L    # 0.0029411764705882353

    invoke-virtual {v0, v2, v3}, Lc8/J;->setDefaultThreshold(D)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lc8/H;->mViewProperty:Lc8/E;

    sget-object v1, Lc8/H;->SCALE_X:Lc8/E;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lc8/H;->mViewProperty:Lc8/E;

    sget-object v1, Lc8/H;->SCALE_Y:Lc8/E;

    if-ne v0, v1, :cond_4

    .line 184
    :cond_3
    iget-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    const-wide v2, 0x3f589374bc6a7efaL    # 0.0015

    invoke-virtual {v0, v2, v3}, Lc8/J;->setDefaultThreshold(D)V

    goto :goto_0

    .line 186
    :cond_4
    iget-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-virtual {v0, v2, v3}, Lc8/J;->setDefaultThreshold(D)V

    goto :goto_0
.end method


# virtual methods
.method public animateToFinalPosition(F)V
    .locals 1
    .param p1, "finalPosition"    # F

    .prologue
    .line 133
    invoke-virtual {p0}, Lc8/H;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iput p1, p0, Lc8/H;->mPendingPosition:F

    .line 142
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lc8/J;

    invoke-direct {v0, p1}, Lc8/J;-><init>(F)V

    iput-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    .line 139
    :cond_1
    iget-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    invoke-virtual {v0, p1}, Lc8/J;->setFinalPosition(F)Lc8/J;

    .line 140
    invoke-virtual {p0}, Lc8/H;->start()V

    goto :goto_0
.end method

.method public canSkipToEnd()Z
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    iget-wide v0, v0, Lc8/J;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAcceleration(FF)F
    .locals 1
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 251
    iget-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    invoke-virtual {v0, p1, p2}, Lc8/J;->getAcceleration(FF)F

    move-result v0

    return v0
.end method

.method public getSpring()Lc8/J;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    return-object v0
.end method

.method isAtEquilibrium(FF)Z
    .locals 1
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 256
    iget-object v0, p0, Lc8/H;->mSpring:Lc8/J;

    invoke-virtual {v0, p1, p2}, Lc8/J;->isAtEquilibrium(FF)Z

    move-result v0

    return v0
.end method

.method public setSpring(Lc8/J;)Lc8/H;
    .locals 0
    .param p1, "force"    # Lc8/J;

    .prologue
    .line 109
    iput-object p1, p0, Lc8/H;->mSpring:Lc8/J;

    .line 110
    invoke-direct {p0}, Lc8/H;->setSpringThreshold()V

    .line 111
    return-object p0
.end method

.method public skipToEnd()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lc8/H;->canSkipToEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Spring animations can only come to an end when there is damping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 159
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    iget-boolean v0, p0, Lc8/H;->mRunning:Z

    if-eqz v0, :cond_2

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/H;->mEndRequested:Z

    .line 164
    :cond_2
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lc8/H;->sanityCheck()V

    .line 117
    invoke-super {p0}, Lc8/F;->start()V

    .line 118
    return-void
.end method

.method updateValueAndVelocity(J)Z
    .locals 9
    .param p1, "deltaT"    # J

    .prologue
    .line 209
    iget-boolean v1, p0, Lc8/H;->mEndRequested:Z

    if-eqz v1, :cond_1

    .line 210
    iget v1, p0, Lc8/H;->mPendingPosition:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lc8/H;->mSpring:Lc8/J;

    iget v2, p0, Lc8/H;->mPendingPosition:F

    invoke-virtual {v1, v2}, Lc8/J;->setFinalPosition(F)Lc8/J;

    .line 212
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lc8/H;->mPendingPosition:F

    .line 214
    :cond_0
    iget-object v1, p0, Lc8/H;->mSpring:Lc8/J;

    invoke-virtual {v1}, Lc8/J;->getFinalPosition()F

    move-result v1

    iput v1, p0, Lc8/H;->mValue:F

    .line 215
    const/4 v1, 0x0

    iput v1, p0, Lc8/H;->mVelocity:F

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/H;->mEndRequested:Z

    .line 217
    const/4 v1, 0x1

    .line 246
    :goto_0
    return v1

    .line 220
    :cond_1
    iget v1, p0, Lc8/H;->mPendingPosition:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lc8/H;->mSpring:Lc8/J;

    invoke-virtual {v1}, Lc8/J;->getFinalPosition()F

    .line 224
    iget-object v1, p0, Lc8/H;->mSpring:Lc8/J;

    iget v2, p0, Lc8/H;->mValue:F

    float-to-double v2, v2

    iget v4, p0, Lc8/H;->mVelocity:F

    float-to-double v4, v4

    const-wide/16 v6, 0x2

    div-long v6, p1, v6

    invoke-virtual/range {v1 .. v7}, Lc8/J;->updateValues(DDJ)Lc8/I;

    move-result-object v0

    .line 225
    .local v0, "massState":Lc8/I;
    iget-object v1, p0, Lc8/H;->mSpring:Lc8/J;

    iget v2, p0, Lc8/H;->mPendingPosition:F

    invoke-virtual {v1, v2}, Lc8/J;->setFinalPosition(F)Lc8/J;

    .line 226
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lc8/H;->mPendingPosition:F

    .line 228
    iget-object v1, p0, Lc8/H;->mSpring:Lc8/J;

    iget v2, v0, Lc8/I;->mValue:F

    float-to-double v2, v2

    iget v4, v0, Lc8/I;->mVelocity:F

    float-to-double v4, v4

    const-wide/16 v6, 0x2

    div-long v6, p1, v6

    invoke-virtual/range {v1 .. v7}, Lc8/J;->updateValues(DDJ)Lc8/I;

    move-result-object v0

    .line 229
    iget v1, v0, Lc8/I;->mValue:F

    iput v1, p0, Lc8/H;->mValue:F

    .line 230
    iget v1, v0, Lc8/I;->mVelocity:F

    iput v1, p0, Lc8/H;->mVelocity:F

    .line 238
    :goto_1
    iget v1, p0, Lc8/H;->mValue:F

    iget v2, p0, Lc8/H;->mMinValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lc8/H;->mValue:F

    .line 239
    iget v1, p0, Lc8/H;->mValue:F

    iget v2, p0, Lc8/H;->mMaxValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lc8/H;->mValue:F

    .line 241
    iget v1, p0, Lc8/H;->mValue:F

    iget v2, p0, Lc8/H;->mVelocity:F

    invoke-virtual {p0, v1, v2}, Lc8/H;->isAtEquilibrium(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, p0, Lc8/H;->mSpring:Lc8/J;

    invoke-virtual {v1}, Lc8/J;->getFinalPosition()F

    move-result v1

    iput v1, p0, Lc8/H;->mValue:F

    .line 243
    const/4 v1, 0x0

    iput v1, p0, Lc8/H;->mVelocity:F

    .line 244
    const/4 v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "massState":Lc8/I;
    :cond_2
    iget-object v1, p0, Lc8/H;->mSpring:Lc8/J;

    iget v2, p0, Lc8/H;->mValue:F

    float-to-double v2, v2

    iget v4, p0, Lc8/H;->mVelocity:F

    float-to-double v4, v4

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Lc8/J;->updateValues(DDJ)Lc8/I;

    move-result-object v0

    .line 234
    .restart local v0    # "massState":Lc8/I;
    iget v1, v0, Lc8/I;->mValue:F

    iput v1, p0, Lc8/H;->mValue:F

    .line 235
    iget v1, v0, Lc8/I;->mVelocity:F

    iput v1, p0, Lc8/H;->mVelocity:F

    goto :goto_1

    .line 246
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
