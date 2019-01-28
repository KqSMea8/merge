.class public abstract Lc8/df;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bf;,
        Lc8/cf;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method abstract addListener(Lc8/bf;)V
.end method

.method abstract addUpdateListener(Lc8/cf;)V
.end method

.method abstract cancel()V
.end method

.method abstract end()V
.end method

.method abstract getAnimatedFloatValue()F
.end method

.method abstract getAnimatedFraction()F
.end method

.method abstract getAnimatedIntValue()I
.end method

.method abstract getDuration()J
.end method

.method abstract isRunning()Z
.end method

.method abstract setDuration(J)V
.end method

.method abstract setFloatValues(FF)V
.end method

.method abstract setIntValues(II)V
.end method

.method abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method abstract start()V
.end method
