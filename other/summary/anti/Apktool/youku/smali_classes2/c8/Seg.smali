.class public Lc8/Seg;
.super Landroid/os/Handler;
.source "WXGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Teg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 441
    return-void
.end method
