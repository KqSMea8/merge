.class public Lc8/Wob;
.super Ljava/lang/Object;
.source "PhenixBasedDrawableLoader.java"

# interfaces
.implements Lc8/AVf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Vob;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public setDrawable(Ljava/lang/String;Lc8/yVf;Lc8/vVf;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "drawableTarget"    # Lc8/yVf;
    .param p3, "drawableStrategy"    # Lc8/vVf;

    .prologue
    .line 18
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    new-instance v2, Lc8/Uob;

    invoke-direct {v2, p0, p2, p1, p3}, Lc8/Uob;-><init>(Lc8/Wob;Lc8/yVf;Ljava/lang/String;Lc8/vVf;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lc8/pVf;->postOnUiThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
