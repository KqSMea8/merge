.class public Lc8/YBb;
.super Ljava/lang/Object;
.source "SPHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p0, "pEditor"    # Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 18
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    return-void
.end method

.method public static fastCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 22
    const-string/jumbo v0, "4.3.8 cacheLog [fastCommit]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    if-eqz p0, :cond_0

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 25
    invoke-static {p0}, Lc8/YBb;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
