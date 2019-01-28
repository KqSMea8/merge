.class public Lc8/Tk;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Lc8/N;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Rk;,
        Lc8/Sk;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static createService(Landroid/content/Context;Lc8/Sk;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceProxy"    # Lc8/Sk;

    .prologue
    .line 31
    new-instance v0, Lc8/Rk;

    invoke-direct {v0, p0, p1}, Lc8/Rk;-><init>(Landroid/content/Context;Lc8/Sk;)V

    return-object v0
.end method
